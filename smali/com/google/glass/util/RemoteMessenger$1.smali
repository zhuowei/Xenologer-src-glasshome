.class Lcom/google/glass/util/RemoteMessenger$1;
.super Ljava/lang/Object;
.source "RemoteMessenger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/RemoteMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/RemoteMessenger;


# direct methods
.method constructor <init>(Lcom/google/glass/util/RemoteMessenger;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/util/RemoteMessenger$1;->this$0:Lcom/google/glass/util/RemoteMessenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger$1;->this$0:Lcom/google/glass/util/RemoteMessenger;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/google/glass/util/RemoteMessenger;->access$002(Lcom/google/glass/util/RemoteMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 46
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger$1;->this$0:Lcom/google/glass/util/RemoteMessenger;

    #calls: Lcom/google/glass/util/RemoteMessenger;->sendPendingMessages()V
    invoke-static {v0}, Lcom/google/glass/util/RemoteMessenger;->access$200(Lcom/google/glass/util/RemoteMessenger;)V

    .line 47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger$1;->this$0:Lcom/google/glass/util/RemoteMessenger;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/util/RemoteMessenger;->messenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/google/glass/util/RemoteMessenger;->access$002(Lcom/google/glass/util/RemoteMessenger;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 41
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger$1;->this$0:Lcom/google/glass/util/RemoteMessenger;

    #getter for: Lcom/google/glass/util/RemoteMessenger;->pendingMessages:Landroid/util/LruCache;
    invoke-static {v0}, Lcom/google/glass/util/RemoteMessenger;->access$100(Lcom/google/glass/util/RemoteMessenger;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 42
    return-void
.end method
