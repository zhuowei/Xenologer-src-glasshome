.class Lcom/google/glass/home/timeline/active/GuardPhraseView$4;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V
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
    .line 135
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$4;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    .line 139
    .local v0, inCallOrCallSetup:Z
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;

    invoke-direct {v2, p0, v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$4$1;-><init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$4;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
