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
    .line 273
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    iput-boolean p3, p0, Lcom/google/glass/logging/UserEventService$3;->val$isForced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 276
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    if-eqz v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v5, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v6, p0, Lcom/google/glass/logging/UserEventService$3;->val$userEvent:Lcom/google/common/logging/GlassUserEventProto;

    invoke-virtual {v5, v6}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v5

    #calls: Lcom/google/glass/logging/UserEventService;->addPerformanceStats(Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;
    invoke-static {v4, v5}, Lcom/google/glass/logging/UserEventService;->access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)Lcom/google/common/logging/GlassUserEventProto;

    move-result-object v0

    .line 279
    .local v0, annotated:Lcom/google/common/logging/GlassUserEventProto;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, logString:Ljava/lang/StringBuilder;
    const-string v4, "Logging user event: [action="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/glass/logging/UserEventAction;->fromAction(Ljava/lang/String;)Lcom/google/glass/logging/UserEventAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    .local v2, now:J
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J
    invoke-static {v4}, Lcom/google/glass/logging/UserEventService;->access$400(Lcom/google/glass/logging/UserEventService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$500()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    #setter for: Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J
    invoke-static {v4, v2, v3}, Lcom/google/glass/logging/UserEventService;->access$402(Lcom/google/glass/logging/UserEventService;J)J

    .line 290
    const-string v4, ", performance stats: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Lcom/google/common/logging/GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassUserEventPerformanceStats;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats;->newBuilder(Lcom/google/common/logging/GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;->clearFrequencyStat()Lcom/google/common/logging/GlassUserEventPerformanceStats$Builder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    invoke-static {v4, v0}, Lcom/google/glass/logging/UserEventService;->access$600(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    .line 299
    .end local v0           #annotated:Lcom/google/common/logging/GlassUserEventProto;
    .end local v1           #logString:Ljava/lang/StringBuilder;
    .end local v2           #now:J
    :cond_1
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService$3;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-boolean v5, p0, Lcom/google/glass/logging/UserEventService$3;->val$isForced:Z

    #calls: Lcom/google/glass/logging/UserEventService;->logQueued(Z)V
    invoke-static {v4, v5}, Lcom/google/glass/logging/UserEventService;->access$700(Lcom/google/glass/logging/UserEventService;Z)V

    .line 300
    return-void
.end method
