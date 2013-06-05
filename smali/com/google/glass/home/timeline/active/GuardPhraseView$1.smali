.class Lcom/google/glass/home/timeline/active/GuardPhraseView$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "GuardPhraseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView;
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
    .line 29
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/callStateReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$1;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #calls: Lcom/google/glass/home/timeline/active/GuardPhraseView;->updateGuardPhraseText()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$000(Lcom/google/glass/home/timeline/active/GuardPhraseView;)V

    .line 34
    return-void
.end method
