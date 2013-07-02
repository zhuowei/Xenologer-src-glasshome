.class final Lcom/google/glass/entity/EntityHelper$3;
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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Z
    .locals 1
    .parameter "input"

    .prologue
    .line 176
    iget-object v0, p1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHelper$3;->apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Z

    move-result v0

    return v0
.end method
