.class Lcom/google/glass/home/companion/CompanionService$1;
.super Landroid/util/LruCache;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/google/glass/home/companion/MessageHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionService;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionService;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionService$1;->this$0:Lcom/google/glass/home/companion/CompanionService;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Long;Lcom/google/glass/home/companion/MessageHandler;Lcom/google/glass/home/companion/MessageHandler;)V
    .locals 3
    .parameter "evicted"
    .parameter "key"
    .parameter "oldHandler"
    .parameter "newHandler"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/google/glass/home/companion/CompanionService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evicting handler with key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/google/glass/home/companion/MessageHandler;->handle(Lcom/google/glass/companion/Proto$Envelope;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    check-cast p2, Ljava/lang/Long;

    .end local p2
    check-cast p3, Lcom/google/glass/home/companion/MessageHandler;

    .end local p3
    check-cast p4, Lcom/google/glass/home/companion/MessageHandler;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/home/companion/CompanionService$1;->entryRemoved(ZLjava/lang/Long;Lcom/google/glass/home/companion/MessageHandler;Lcom/google/glass/home/companion/MessageHandler;)V

    return-void
.end method
