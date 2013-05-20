.class Lcom/google/glass/share/ShareActivity$2$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity$2;->onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/share/ShareActivity$2;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$2$1;->this$1:Lcom/google/glass/share/ShareActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$2$1;->this$1:Lcom/google/glass/share/ShareActivity$2;

    iget-object v0, v0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    iget-object v1, p0, Lcom/google/glass/share/ShareActivity$2$1;->this$1:Lcom/google/glass/share/ShareActivity$2;

    iget-object v1, v1, Lcom/google/glass/share/ShareActivity$2;->val$shareTarget:Lcom/google/googlex/glass/common/proto/Entity;

    iget-object v2, p0, Lcom/google/glass/share/ShareActivity$2$1;->this$1:Lcom/google/glass/share/ShareActivity$2;

    iget-object v2, v2, Lcom/google/glass/share/ShareActivity$2;->val$itemIdToShare:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/glass/share/ShareActivity$2$1;->this$1:Lcom/google/glass/share/ShareActivity$2;

    iget v3, v3, Lcom/google/glass/share/ShareActivity$2;->val$attemptNumber:I

    add-int/lit8 v3, v3, 0x1

    #calls: Lcom/google/glass/share/ShareActivity;->shareItem(Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/share/ShareActivity;->access$300(Lcom/google/glass/share/ShareActivity;Lcom/google/googlex/glass/common/proto/Entity;Landroid/net/Uri;I)V

    .line 411
    return-void
.end method
