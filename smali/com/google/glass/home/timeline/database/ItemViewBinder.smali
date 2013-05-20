.class public interface abstract Lcom/google/glass/home/timeline/database/ItemViewBinder;
.super Ljava/lang/Object;
.source "ItemViewBinder.java"


# virtual methods
.method public abstract bind(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;ZZLandroid/view/View;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/widget/DynamicSizeTextView$TextClipListener;)Z
.end method

.method public abstract clear(Landroid/view/View;Z)V
.end method

.method public abstract getLayout()I
.end method

.method public abstract splitBundle(Lcom/google/googlex/glass/common/proto/TimelineItem;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;)V"
        }
    .end annotation
.end method
