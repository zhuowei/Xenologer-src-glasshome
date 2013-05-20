.class Lcom/google/glass/logging/UserEventService$2;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$2;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$2;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$2;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService$2;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-virtual {v2}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/google/glass/logging/UserEventService;->readEventsFromDisk(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/glass/logging/UserEventService;->access$200(Lcom/google/glass/logging/UserEventService;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$102(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;

    .line 162
    return-void
.end method
