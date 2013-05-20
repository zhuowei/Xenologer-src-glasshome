.class Lcom/google/glass/logging/UserEventService$3;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassUserEventProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$userEvent:Lcom/google/common/logging/GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    .line 219
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    #calls: Lcom/google/glass/logging/UserEventService;->logQueued()V
    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->access$400(Lcom/google/glass/logging/UserEventService;)V

    .line 220
    return-void
.end method
