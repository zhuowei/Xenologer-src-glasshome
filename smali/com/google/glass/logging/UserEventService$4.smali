.class Lcom/google/glass/logging/UserEventService$4;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "UserEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/UserEventService;->sendBlockingGetSessionIdRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService$4;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)V
    .locals 3
    .parameter "responseProto"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$4;->this$0:Lcom/google/glass/logging/UserEventService;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;->getSessionId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/glass/logging/UserEventService;->access$502(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService$4;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/glass/logging/UserEventService;->access$600(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService$4;->this$0:Lcom/google/glass/logging/UserEventService;

    #getter for: Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/glass/logging/UserEventService;->access$500(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 482
    check-cast p1, Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/UserEventService$4;->onSuccess(Lcom/google/googlex/glass/common/proto/GetSessionIdResponse;)V

    return-void
.end method
