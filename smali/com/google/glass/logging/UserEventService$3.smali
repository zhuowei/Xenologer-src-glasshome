.class Lcom/google/glass/logging/UserEventService$3;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$isForced:Z

.field final synthetic val$userEvent:Lcom/google/common/logging/GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    iput-boolean p3, p0, Lcom/google/glass/logging/UserEventService$3;->val$isForced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v1

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    .line 251
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-boolean v1, p0, Lcom/google/glass/logging/UserEventService$3;->val$isForced:Z

    #calls: Lcom/google/glass/logging/UserEventService;->logQueued(Z)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$400(Lcom/google/glass/logging/UserEventService;Z)V

    .line 252
    return-void
.end method
