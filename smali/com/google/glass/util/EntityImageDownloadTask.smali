.class public Lcom/google/glass/util/EntityImageDownloadTask;
.super Lcom/google/glass/util/PersonImageDownloadTask;
.source "EntityImageDownloadTask.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/Entity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V
    .locals 7
    .parameter "context"
    .parameter "entity"
    .parameter "pictureView"
    .parameter "nameView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstImageUrl(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/PersonImageDownloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 35
    return-void
.end method


# virtual methods
.method protected getCacheId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityHelper;->getDisplayableName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "ei"

    return-object v0
.end method

.method protected onPreLoad()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaPhoneNumber(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/EntityImageDownloadTask;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/util/EntityImageDownloadTask;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityHelper;->getPictureUrlViaEmail(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/EntityImageDownloadTask;->setImageUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    :cond_1
    return-void
.end method
