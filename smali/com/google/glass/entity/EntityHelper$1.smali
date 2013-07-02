.class final Lcom/google/glass/entity/EntityHelper$1;
.super Ljava/lang/Object;
.source "EntityHelper.java"

# interfaces
.implements Lcom/google/common/base/Function;


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
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/glass/entity/EntityHelper$EntityData;",
        "Lcom/google/googlex/glass/common/proto/Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1
    .parameter "input"

    .prologue
    .line 155
    iget-object v0, p1, Lcom/google/glass/entity/EntityHelper$EntityData;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/EntityHelper$1;->apply(Lcom/google/glass/entity/EntityHelper$EntityData;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method
