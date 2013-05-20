.class Lcom/google/glass/util/RemoteMessenger$2;
.super Landroid/util/LruCache;
.source "RemoteMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/RemoteMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Landroid/os/Message;",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/RemoteMessenger;


# direct methods
.method constructor <init>(Lcom/google/glass/util/RemoteMessenger;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/util/RemoteMessenger$2;->this$0:Lcom/google/glass/util/RemoteMessenger;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLandroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "evicted"
    .parameter "key"
    .parameter "oldMessage"
    .parameter "newMessage"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/util/RemoteMessenger$2;->this$0:Lcom/google/glass/util/RemoteMessenger;

    #calls: Lcom/google/glass/util/RemoteMessenger;->issueFailure(Landroid/os/Message;)V
    invoke-static {v0, p3}, Lcom/google/glass/util/RemoteMessenger;->access$300(Lcom/google/glass/util/RemoteMessenger;Landroid/os/Message;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/google/glass/util/RemoteMessenger;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ejecting message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    check-cast p2, Landroid/os/Message;

    .end local p2
    check-cast p3, Landroid/os/Message;

    .end local p3
    check-cast p4, Landroid/os/Message;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/util/RemoteMessenger$2;->entryRemoved(ZLandroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method
