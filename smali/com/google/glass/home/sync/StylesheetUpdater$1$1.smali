.class Lcom/google/glass/home/sync/StylesheetUpdater$1$1;
.super Ljava/lang/Object;
.source "StylesheetUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/StylesheetUpdater$1;->onSuccess(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/sync/StylesheetUpdater$1;

.field final synthetic val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceResponse;


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/StylesheetUpdater$1;Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;->this$1:Lcom/google/glass/home/sync/StylesheetUpdater$1;

    iput-object p2, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;->val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;->this$1:Lcom/google/glass/home/sync/StylesheetUpdater$1;

    iget-object v0, v0, Lcom/google/glass/home/sync/StylesheetUpdater$1;->this$0:Lcom/google/glass/home/sync/StylesheetUpdater;

    iget-object v1, p0, Lcom/google/glass/home/sync/StylesheetUpdater$1$1;->val$responseProto:Lcom/google/googlex/glass/common/proto/ResourceResponse;

    #calls: Lcom/google/glass/home/sync/StylesheetUpdater;->handleResponse(Lcom/google/googlex/glass/common/proto/ResourceResponse;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/sync/StylesheetUpdater;->access$000(Lcom/google/glass/home/sync/StylesheetUpdater;Lcom/google/googlex/glass/common/proto/ResourceResponse;)V

    .line 83
    return-void
.end method
