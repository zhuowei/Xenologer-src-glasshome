.class Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;
.super Ljava/lang/Object;
.source "GuardPhraseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

.field final synthetic val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/GuardPhraseView$5;Lcom/google/glass/util/BatteryHelper$BatteryState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 170
    .local v0, errorsFound:Z
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v1

    .line 172
    .local v1, remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;
    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->isTetheringErrorDetected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 176
    .local v2, showErrorMessage:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 177
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 178
    const/4 v0, 0x1

    .line 184
    :goto_1
    sget-object v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$6;->$SwitchMap$com$google$glass$util$StorageHelper$State:[I

    iget-object v4, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v4, v4, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    #getter for: Lcom/google/glass/home/timeline/active/GuardPhraseView;->storageHelper:Lcom/google/glass/util/StorageHelper;
    invoke-static {v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$500(Lcom/google/glass/home/timeline/active/GuardPhraseView;)Lcom/google/glass/util/StorageHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper;->getExternalStorageState()Lcom/google/glass/util/StorageHelper$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/util/StorageHelper$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 196
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 197
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 201
    :goto_2
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    iget v3, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    const/high16 v4, 0x4120

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->val$currentState:Lcom/google/glass/util/BatteryHelper$BatteryState;

    iget-boolean v3, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    if-nez v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_battery_low:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 204
    const/4 v0, 0x1

    .line 212
    :goto_3
    invoke-static {}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Errors found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 172
    .end local v2           #showErrorMessage:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    .restart local v2       #showErrorMessage:Z
    :cond_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_check_my_glass:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_1

    .line 186
    :pswitch_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 187
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_2

    .line 191
    :pswitch_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_low:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->addMessage(I)V

    .line 192
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_storage_full:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    .line 193
    const/4 v0, 0x1

    .line 194
    goto :goto_2

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/GuardPhraseView$5$1;->this$1:Lcom/google/glass/home/timeline/active/GuardPhraseView$5;

    iget-object v3, v3, Lcom/google/glass/home/timeline/active/GuardPhraseView$5;->this$0:Lcom/google/glass/home/timeline/active/GuardPhraseView;

    sget v4, Lcom/google/glass/home/R$string;->home_error_battery_low:I

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/active/GuardPhraseView;->removeMessage(I)V

    goto :goto_3

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
