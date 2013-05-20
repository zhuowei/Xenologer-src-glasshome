.class public Lcom/google/glass/home/sync/EntitySyncService;
.super Landroid/app/Service;
.source "EntitySyncService.java"


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/EntitySyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    sget-object v1, Lcom/google/glass/home/sync/EntitySyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncAdapter;

    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/glass/home/sync/EntitySyncAdapter;-><init>(Lcom/google/glass/home/HomeApplication;Z)V

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncService;->syncAdapter:Lcom/google/glass/home/sync/EntitySyncAdapter;

    .line 25
    :cond_0
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
