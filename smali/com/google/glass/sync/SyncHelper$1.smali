.class final Lcom/google/glass/sync/SyncHelper$1;
.super Ljava/lang/Object;
.source "SyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;

.field final synthetic val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

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

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v3, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v2, v3, :cond_1

    .line 112
    const-string v2, "force"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    :cond_0
    :goto_0
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

    const-string v4, ", syncSource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$primaryAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    return-void

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v3, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v2, v3, :cond_0

    .line 117
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 119
    .local v1, inBackoffMode:Z
    :goto_1
    if-nez v1, :cond_0

    .line 121
    const-string v2, "ignore_backoff"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    .end local v1           #inBackoffMode:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
