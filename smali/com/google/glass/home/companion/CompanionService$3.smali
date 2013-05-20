.class Lcom/google/glass/home/companion/CompanionService$3;
.super Landroid/os/Handler;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/CompanionService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$3;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 299
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->parseRequestMessage(Landroid/os/Message;)Landroid/util/Pair;

    move-result-object v0

    .line 300
    .local v0, idAndData:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;[B>;"
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling message with replyable id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, messageHandler:Lcom/google/glass/home/companion/MessageHandler;
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 306
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 307
    .local v2, replyToMessenger:Landroid/os/Messenger;
    new-instance v1, Lcom/google/glass/home/companion/CompanionService$3$1;

    .end local v1           #messageHandler:Lcom/google/glass/home/companion/MessageHandler;
    invoke-direct {v1, p0, v0, v2}, Lcom/google/glass/home/companion/CompanionService$3$1;-><init>(Lcom/google/glass/home/companion/CompanionService$3;Landroid/util/Pair;Landroid/os/Messenger;)V

    .line 324
    .restart local v1       #messageHandler:Lcom/google/glass/home/companion/MessageHandler;
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService$3;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;
    invoke-static {v3}, Lcom/google/glass/home/companion/CompanionService;->access$300(Lcom/google/glass/home/companion/CompanionService;)Landroid/util/LruCache;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v2           #replyToMessenger:Landroid/os/Messenger;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionService$3;->this$0:Lcom/google/glass/home/companion/CompanionService;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    #calls: Lcom/google/glass/home/companion/CompanionService;->sendEnvelope([B)Z
    invoke-static {v4, v3}, Lcom/google/glass/home/companion/CompanionService;->access$400(Lcom/google/glass/home/companion/CompanionService;[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionService$3;->this$0:Lcom/google/glass/home/companion/CompanionService;

    #getter for: Lcom/google/glass/home/companion/CompanionService;->pendingMessageHandlers:Landroid/util/LruCache;
    invoke-static {v3}, Lcom/google/glass/home/companion/CompanionService;->access$300(Lcom/google/glass/home/companion/CompanionService;)Landroid/util/LruCache;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    if-eqz v1, :cond_1

    .line 330
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/google/glass/home/companion/MessageHandler;->handle(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 333
    :cond_1
    return-void
.end method
