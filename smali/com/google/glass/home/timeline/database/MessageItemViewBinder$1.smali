.class Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;
.super Ljava/lang/Object;
.source "MessageItemViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/MessageItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/database/MessageItemViewBinder;

.field final synthetic val$finalContent:Ljava/lang/CharSequence;

.field final synthetic val$finalContentBindingIndex:I

.field final synthetic val$messageView:Lcom/google/glass/widget/DynamicSizeTextView;

.field final synthetic val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/MessageItemViewBinder;Landroid/view/View;ILcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->this$0:Lcom/google/glass/home/timeline/database/MessageItemViewBinder;

    iput-object p2, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$finalContentBindingIndex:I

    iput-object p4, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$messageView:Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object p5, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    iput-object p6, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$finalContent:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$view:Landroid/view/View;

    sget v2, Lcom/google/glass/home/R$id;->tag_view_binding_index:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, bindingIndexTag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #bindingIndexTag:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$finalContentBindingIndex:I

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$messageView:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$textClipListener:Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setTextClipListener(Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)V

    .line 107
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$messageView:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/database/MessageItemViewBinder$1;->val$finalContent:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method
