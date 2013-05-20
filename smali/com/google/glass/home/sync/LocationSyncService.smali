.class public Lcom/google/glass/home/sync/LocationSyncService;
.super Landroid/app/Service;
.source "LocationSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;
    }
.end annotation


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static syncAdapter:Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/home/sync/LocationSyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncService;->syncAdapter:Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    sget-object v1, Lcom/google/glass/home/sync/LocationSyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/glass/home/sync/LocationSyncService;->syncAdapter:Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;

    invoke-direct {v0, p0}, Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/home/sync/LocationSyncService;->syncAdapter:Lcom/google/glass/home/sync/LocationSyncService$LocationSyncAdapter;

    .line 28
    :cond_0
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
