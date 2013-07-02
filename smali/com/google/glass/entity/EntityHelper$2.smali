.class final Lcom/google/glass/entity/EntityHelper$2;
.super Ljava/lang/Object;
.source "EntityHelper.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/entity/EntityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Lcom/google/glass/entity/EntityHelper$EntityData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Z
    .locals 3
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v2, p1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    iget-object v2, p1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    check-cast p1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHelper$2;->apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Z

    move-result v0

    return v0
.end method
