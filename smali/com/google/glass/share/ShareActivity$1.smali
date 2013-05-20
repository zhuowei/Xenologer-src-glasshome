.class Lcom/google/glass/share/ShareActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->onShareTargetConfirm(Lcom/google/googlex/glass/common/proto/Entity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;

.field final synthetic val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    iput-object p2, p0, Lcom/google/glass/share/ShareActivity$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/share/ShareActivity;->access$000(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method public onDone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 350
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/share/ShareActivity;->access$100(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Share confirmed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {v3}, Lcom/google/glass/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 352
    .local v1, returnedIntent:Landroid/content/Intent;
    const-string v3, "share_target"

    iget-object v4, p0, Lcom/google/glass/share/ShareActivity$1;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 354
    const-string v3, "update_timeline_share"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/share/ShareActivity;->access$200(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Inserting new TimelineItem on behalf of calling activity."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v3, "share_target"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/Entity;

    .line 358
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 359
    .local v0, itemIdToShare:Landroid/net/Uri;
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V
    invoke-static {v3, v2, v0, v5}, Lcom/google/glass/share/ShareActivity;->access$300(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V

    .line 363
    .end local v0           #itemIdToShare:Landroid/net/Uri;
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_0
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/google/glass/share/ShareActivity;->setResult(ILandroid/content/Intent;)V

    .line 364
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->getTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/glass/share/ShareActivity;->access$400(Lcom/google/glass/share/ShareActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Set result, finishing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$1;->this$0:Lcom/google/glass/share/ShareActivity;

    #calls: Lcom/google/glass/share/ShareActivity;->finishAndTurnScreenOffIfRequested()V
    invoke-static {v3}, Lcom/google/glass/share/ShareActivity;->access$500(Lcom/google/glass/share/ShareActivity;)V

    .line 366
    return-void
.end method
