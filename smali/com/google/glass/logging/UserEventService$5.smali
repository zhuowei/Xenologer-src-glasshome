.class Lcom/google/glass/logging/UserEventService$5;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;

.field final synthetic val$event:Lcom/google/common/logging/GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$5;->this$0:Lcom/google/glass/logging/UserEventService;

    iput-object p2, p0, Lcom/google/glass/logging/UserEventService$5;->val$event:Lcom/google/common/logging/GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 467
    invoke-static {}, Lcom/google/glass/logging/UserEventService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User event request cancelled. Will retry."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$5;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$5;->val$event:Lcom/google/common/logging/GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    .line 469
    return-void
.end method

.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$5;->this$0:Lcom/google/glass/logging/UserEventService;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService$5;->val$event:Lcom/google/common/logging/GlassUserEventProto;

    #calls: Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassUserEventProto;)V
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$300(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassUserEventProto;)V

    .line 475
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)V
    .locals 0
    .parameter "responseProto"

    .prologue
    .line 479
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 464
    check-cast p1, Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$5;->onSuccess(Lcom/google/googlex/glass/common/proto/ReportUserEventResponse;)V

    return-void
.end method
