.class Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WifiSettingsMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$600(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forget canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->goBackToTimeline()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$700(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    .line 214
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$800(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "forget confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->forgetCurrentNetwork()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$900(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    .line 220
    iget-object v0, p0, Lcom/google/glass/home/settings/WifiSettingsMenuActivity$3;->this$0:Lcom/google/glass/home/settings/WifiSettingsMenuActivity;

    #calls: Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->goBackToTimeline()V
    invoke-static {v0}, Lcom/google/glass/home/settings/WifiSettingsMenuActivity;->access$700(Lcom/google/glass/home/settings/WifiSettingsMenuActivity;)V

    .line 221
    return-void
.end method
