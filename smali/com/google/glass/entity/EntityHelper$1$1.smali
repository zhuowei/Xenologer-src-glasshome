.class Lcom/google/glass/entity/EntityHelper$1$1;
.super Ljava/lang/Object;
.source "EntityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityHelper$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/entity/EntityHelper$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityHelper$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    iput-object p2, p0, Lcom/google/glass/entity/EntityHelper$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityHelper$1;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received broadcast that entity db changed, reloading entity cache."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/google/glass/entity/EntityHelper$1$1;->this$1:Lcom/google/glass/entity/EntityHelper$1;

    iget-object v0, v0, Lcom/google/glass/entity/EntityHelper$1;->this$0:Lcom/google/glass/entity/EntityHelper;

    iget-object v1, p0, Lcom/google/glass/entity/EntityHelper$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHelper;->loadEntityDataCache(Landroid/content/Context;)V

    .line 237
    return-void
.end method
