.class Lcom/google/glass/home/timeline/active/GuardPhraseView$2;
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
    .line 41
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/companionStateChangeReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, "com.google.glass.action.COMPANION_APP_CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p1}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getCompanionState()Lcom/google/glass/home/companion/CompanionState;

    move-result-object v0

    .line 48
    .local v0, companionState:Lcom/google/glass/home/companion/CompanionState;
    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/glass/home/companion/CompanionState;->isTetheringErrorDetected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v2, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 54
    .end local v0           #companionState:Lcom/google/glass/home/companion/CompanionState;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #companionState:Lcom/google/glass/home/companion/CompanionState;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$2;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v2, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_0
.end method
