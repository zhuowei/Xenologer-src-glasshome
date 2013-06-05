.class Lcom/google/glass/home/timeline/active/GuardPhraseView$2;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;->onLoad()V
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
    .line 75
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->callStateReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$200(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/SafeBroadcastReceiver;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.glass.action.CALL_STATE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.google.glass.action.CALL_SETUP_STATE"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->companionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$300(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 82
    return-void
.end method
