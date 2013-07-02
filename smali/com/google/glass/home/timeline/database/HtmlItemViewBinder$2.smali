.class Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;
.super Ljava/lang/Object;
.source "HtmlItemViewBinder.java"

# interfaces
.implements Lcom/google/glass/html/HtmlRenderer$OnPageCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;->onBind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

.field final synthetic val$contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->this$0:Lcom/google/glass/home/timeline/database/HtmlItemViewBinder;

    iput-object p2, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->val$contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    iput-object p3, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 4
    .parameter "pages"

    .prologue
    const/4 v0, 0x1

    .line 61
    if-le p1, v0, :cond_1

    .line 62
    .local v0, clipped:Z
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->val$contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->val$contentSizedListener:Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;

    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v3, p0, Lcom/google/glass/home/timeline/database/HtmlItemViewBinder$2;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v2, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-interface {v1, v2, v0}, Lcom/google/glass/home/timeline/TimelineItemAdapter$ContentSizedListener;->onContentSized(Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 65
    :cond_0
    return-void

    .line 61
    .end local v0           #clipped:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
