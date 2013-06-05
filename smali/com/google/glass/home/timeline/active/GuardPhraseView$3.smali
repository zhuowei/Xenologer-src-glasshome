.class Lcom/google/glass/home/timeline/active/GuardPhraseView$3;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;->onUnload()V
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
    .line 87
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 92
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$3;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 93
    return-void
.end method
