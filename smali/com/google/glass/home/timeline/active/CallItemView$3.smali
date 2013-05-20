.class Lcom/google/glass/home/timeline/active/CallItemView$3;
.super Lcom/google/glass/entity/MatchEntity;
.source "CallItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/active/CallItemView;->updateCallerPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/CallItemView;

.field final synthetic val$itemSubview:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/CallItemView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    iput-object p2, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->val$itemSubview:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/glass/entity/MatchEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntityMatched(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 8
    .parameter "entity"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #setter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v1, p1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$802(Lcom/google/glass/home/timeline/active/CallItemView;Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    .line 286
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerIdMatch:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$800(Lcom/google/glass/home/timeline/active/CallItemView;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, imageUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-static {}, Lcom/google/glass/home/timeline/active/CallItemView;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading user\'s image."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 290
    .local v7, display:Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/google/glass/home/timeline/active/CallItemView$3$1;

    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v6, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->SMART_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/timeline/active/CallItemView$3$1;-><init>(Lcom/google/glass/home/timeline/active/CallItemView$3;Landroid/content/Context;Ljava/lang/String;IILcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)V

    .line 306
    .local v0, imageTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->val$itemSubview:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/glass/util/DeferredContentLoader;->loadForScrollItemSubview(Landroid/view/View;Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 310
    .end local v0           #imageTask:Lcom/google/glass/util/ImageProxyBitmapLoadingTask;
    .end local v7           #display:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/google/glass/home/timeline/active/CallItemView;->access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    return-void
.end method

.method public onNoMatchFound()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/CallItemView$3;->this$0:Lcom/google/glass/home/timeline/active/CallItemView;

    #getter for: Lcom/google/glass/home/timeline/active/CallItemView;->callerPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/CallItemView;->access$700(Lcom/google/glass/home/timeline/active/CallItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    return-void
.end method
