.class Lcom/google/glass/home/HomeApplication$8;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Lcom/google/glass/util/InetConnectionState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->enableConnectivityEstablishedSync(Landroid/accounts/Account;)V
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
    .line 355
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$8;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$8;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-static {}, Lcom/google/glass/home/HomeApplication;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connectivity established. Requesting sync."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.glass.sync.CONNECTIVITY_ESTABLISHED_SYNC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$8;->val$primaryAccount:Landroid/accounts/Account;

    const-string v2, "com.google.glass.timeline"

    invoke-static {v1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$8;->val$primaryAccount:Landroid/accounts/Account;

    const-string v2, "com.google.glass.entity"

    invoke-static {v1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 366
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method
