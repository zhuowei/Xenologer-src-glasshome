.class Lcom/google/glass/home/HomeApplication$7;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->enablePowerConnectedSync(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$7;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$7;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/powerConnectedReceiver"

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
    .line 338
    invoke-virtual {p0}, Lcom/google/glass/home/HomeApplication$7;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Power connected. Requesting sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.glass.sync.POWER_CONNECTED_SYNC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$7;->val$primaryAccount:Landroid/accounts/Account;

    const-string v2, "com.google.glass.timeline"

    invoke-static {v1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 343
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$7;->val$primaryAccount:Landroid/accounts/Account;

    const-string v2, "com.google.glass.entity"

    invoke-static {v1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 344
    return-void
.end method
