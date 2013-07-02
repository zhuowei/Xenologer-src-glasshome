.class Lcom/google/glass/home/sync/EntitySyncHandler$1;
.super Ljava/lang/Object;
.source "EntitySyncHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/EntitySyncHandler;->fetchEntities()V
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
        "Lcom/google/googlex/glass/common/proto/EntitySyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

.field final synthetic val$entitiesFromDevice:Ljava/util/Map;

.field final synthetic val$requiresFullRefresh:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->val$entitiesFromDevice:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->val$requiresFullRefresh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Entity sync cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 102
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entity sync error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleFail(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V

    .line 104
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)V
    .locals 4
    .parameter "responseProto"

    .prologue
    .line 108
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getEntitiesCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;->getEntitiesList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->val$entitiesFromDevice:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->val$requiresFullRefresh:Z

    #calls: Lcom/google/glass/home/sync/EntitySyncHandler;->updateEntityProvider(Ljava/util/List;Ljava/util/Map;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$100(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/List;Ljava/util/Map;Z)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleSuccess()V

    .line 113
    iget-boolean v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->val$requiresFullRefresh:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$1;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    #calls: Lcom/google/glass/home/sync/EntitySyncHandler;->updateLastFullRefreshTime()V
    invoke-static {v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$200(Lcom/google/glass/home/sync/EntitySyncHandler;)V

    .line 116
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, Lcom/google/googlex/glass/common/proto/EntitySyncResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler$1;->onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncResponse;)V

    return-void
.end method
