.class Lcom/google/glass/timeline/TimelineOptionsHelper$7;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

.field final synthetic val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    .prologue
    .line 916
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void
.end method

.method public onDone()V
    .locals 3

    .prologue
    .line 921
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$7;->val$menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;->onConfirmed(Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 925
    :cond_0
    return-void
.end method
