.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;
.super Ljava/lang/Object;
.source "WifiSettingsMenuActivity.java"

# interfaces
.implements Lcom/google/glass/util/WifiHelper$WifiConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->connectToNetwork(ILjava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

.field final synthetic val$connectionDialog:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;Lcom/google/glass/widget/MessageDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    iput-object p2, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->val$connectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateDialog(II)V
    .locals 2
    .parameter "messageId"
    .parameter "iconId"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->val$connectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->val$connectionDialog:Lcom/google/glass/widget/MessageDialog;

    new-instance v1, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4$1;-><init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 341
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->val$connectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 342
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->val$connectionDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 343
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getContentView()Landroid/view/View;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$900(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 325
    sget v0, Lcom/google/glass/home/R$string;->wifi_menu_connected:I

    sget v1, Lcom/google/glass/home/R$drawable;->ic_done_medium:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->updateDialog(II)V

    .line 326
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 319
    sget v0, Lcom/google/glass/home/R$string;->wifi_menu_failed:I

    sget v1, Lcom/google/glass/home/R$drawable;->ic_fail_medium:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$4;->updateDialog(II)V

    .line 320
    return-void
.end method
