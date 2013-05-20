.class Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LocationSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/LocationSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationSyncAdapter"
.end annotation


# instance fields
.field private final handler:Lcom/google/glass/home/sync/LocationSyncHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 42
    new-instance v0, Lcom/google/glass/home/sync/LocationSyncHandler;

    invoke-direct {v0, p1}, Lcom/google/glass/home/sync/LocationSyncHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;->handler:Lcom/google/glass/home/sync/LocationSyncHandler;

    .line 43
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 1
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;->handler:Lcom/google/glass/home/sync/LocationSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/LocationSyncHandler;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;->handler:Lcom/google/glass/home/sync/LocationSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/LocationSyncHandler;->performLocationSync()V

    .line 51
    :cond_0
    return-void
.end method
