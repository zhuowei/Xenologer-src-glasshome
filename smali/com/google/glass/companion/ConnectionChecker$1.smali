.class Lcom/google/glass/companion/ConnectionChecker$1;
.super Landroid/os/Handler;
.source "ConnectionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/ConnectionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/ConnectionChecker;


# direct methods
.method constructor <init>(Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 67
    .local v1, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Message is canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->hasCompanionInfo()Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "No companion info specified."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Envelope;->getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;

    move-result-object v2

    .line 78
    .local v2, info:Lcom/google/glass/companion/Proto$CompanionInfo;
    const-string v5, "t"

    const-string v6, "0"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v8, "d"

    aput-object v8, v7, v4

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "y"

    :goto_1
    aput-object v4, v7, v8

    const/4 v4, 0x2

    const-string v8, "v"

    aput-object v8, v7, v4

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, data:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseIsNetworkOk()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->hasResponseAndroidVersion()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;->getResponseAndroidVersion()I

    move-result v4

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    .line 87
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #getter for: Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    .line 88
    invoke-static {}, Lcom/google/glass/companion/ConnectionChecker;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Send tethering error message to companion.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #calls: Lcom/google/glass/companion/ConnectionChecker;->sendTetheringErrorMessage()V
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$200(Lcom/google/glass/companion/ConnectionChecker;)V

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/google/glass/companion/ConnectionChecker$1;->this$0:Lcom/google/glass/companion/ConnectionChecker;

    #getter for: Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/companion/ConnectionChecker;->access$300(Lcom/google/glass/companion/ConnectionChecker;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v3

    .line 93
    .local v3, userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    sget-object v4, Lcom/google/glass/logging/UserEventAction;->COMPANION_CONNECTION:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {v3, v4, v0}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v0           #data:Ljava/lang/String;
    .end local v3           #userEventHelper:Lcom/google/glass/logging/UserEventHelper;
    :cond_3
    const-string v4, "n"

    goto/16 :goto_1

    :cond_4
    const-string v4, "0"

    goto :goto_2
.end method
