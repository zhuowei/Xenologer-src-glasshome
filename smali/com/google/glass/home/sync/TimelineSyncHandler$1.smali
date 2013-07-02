.class Lcom/google/glass/home/sync/TimelineSyncHandler$1;
.super Ljava/lang/Object;
.source "TimelineSyncHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/TimelineSyncHandler;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/TimelineSyncHandler;

.field final synthetic val$syncStats:Lcom/google/glass/home/sync/SyncStats;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/TimelineSyncHandler;Lcom/google/glass/home/sync/SyncStats;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/home/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/home/sync/TimelineSyncHandler;

    iput-object p2, p0, Lcom/google/glass/home/sync/TimelineSyncHandler$1;->val$syncStats:Lcom/google/glass/home/sync/SyncStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/glass/home/sync/TimelineSyncHandler$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/google/glass/home/sync/TimelineSyncHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting timeline upload asynchronously."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/google/glass/home/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/home/sync/TimelineSyncHandler;

    #getter for: Lcom/google/glass/home/sync/TimelineSyncHandler;->uploadSyncHelper:Lcom/google/glass/home/sync/UploadSyncHelper;
    invoke-static {v0}, Lcom/google/glass/home/sync/TimelineSyncHandler;->access$100(Lcom/google/glass/home/sync/TimelineSyncHandler;)Lcom/google/glass/home/sync/UploadSyncHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/sync/TimelineSyncHandler$1;->val$syncStats:Lcom/google/glass/home/sync/SyncStats;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/sync/UploadSyncHelper;->sync(Lcom/google/glass/home/sync/SyncStats;)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
