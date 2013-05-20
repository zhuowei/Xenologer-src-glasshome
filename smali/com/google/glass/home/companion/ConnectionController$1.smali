.class Lcom/google/glass/home/companion/ConnectionController$1;
.super Ljava/lang/Object;
.source "ConnectionController.java"

# interfaces
.implements Lcom/google/glass/home/companion/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/ConnectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/ConnectionController;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/ConnectionController;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/home/companion/ConnectionController$1;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 8
    .parameter "envelope"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Lcom/google/glass/home/companion/ConnectionController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Message is canceled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    invoke-static {}, Lcom/google/glass/home/companion/ConnectionController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No companion info specified."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v1

    .line 82
    .local v1, info:Lcom/google/glass/companion/Proto$CompanionInfo;
    const-string v4, "t"

    const-string v5, "0"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v7, "d"

    aput-object v7, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "y"

    :goto_1
    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, "v"

    aput-object v7, v6, v3

    const/4 v7, 0x3

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, data:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/home/companion/ConnectionController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Logging "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_2

    .line 91
    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController$1;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #getter for: Lcom/google/glass/home/companion/ConnectionController;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/glass/home/companion/ConnectionController;->access$100(Lcom/google/glass/home/companion/ConnectionController;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 92
    invoke-static {}, Lcom/google/glass/home/companion/ConnectionController;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Send tethering error message to companion.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController$1;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #calls: Lcom/google/glass/home/companion/ConnectionController;->sendTetheringErrorMessage()V
    invoke-static {v3}, Lcom/google/glass/home/companion/ConnectionController;->access$200(Lcom/google/glass/home/companion/ConnectionController;)V

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/google/glass/home/companion/ConnectionController$1;->this$0:Lcom/google/glass/home/companion/ConnectionController;

    #getter for: Lcom/google/glass/home/companion/ConnectionController;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/glass/home/companion/ConnectionController;->access$300(Lcom/google/glass/home/companion/ConnectionController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v2

    .line 97
    .local v2, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    sget-object v3, Lcom/google/glass/logging/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    :cond_3
    const-string v3, "n"

    goto/16 :goto_1

    :cond_4
    const-string v3, "0"

    goto :goto_2
.end method
