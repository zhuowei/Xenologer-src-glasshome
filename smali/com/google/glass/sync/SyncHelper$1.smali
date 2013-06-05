.class final Lcom/google/glass/sync/SyncHelper$1;
.super Ljava/lang/Object;
.source "SyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/sync/SyncHelper$1;->val$extras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$extras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    const-string v2, "com.google.glass.sync.POWER_CONNECTED_SYNC"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const-string v2, "force"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    :cond_0
    :goto_1
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting sync [authority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/SyncHelper$1;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$primaryAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    return-void

    .line 97
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/SyncHelper$1;->val$extras:Landroid/os/Bundle;

    goto :goto_0

    .line 101
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_2
    const-string v2, "com.google.glass.sync.GCM_SYNC"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 107
    .local v1, inBackoffMode:Z
    :goto_2
    if-nez v1, :cond_0

    .line 109
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 105
    .end local v1           #inBackoffMode:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
