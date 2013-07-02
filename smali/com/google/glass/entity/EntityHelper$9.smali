.class Lcom/google/glass/entity/EntityHelper$9;
.super Ljava/lang/Object;
.source "EntityHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityHelper;->extractRecentlyUsedShareTargets(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/entity/EntityHelper$EntityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/glass/entity/EntityHelper$9;->this$0:Lcom/google/glass/entity/EntityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityHelper$EntityData;Lcom/google/glass/entity/EntityHelper$EntityData;)I
    .locals 4
    .parameter "entity1"
    .parameter "entity2"

    .prologue
    .line 608
    iget-wide v0, p2, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    iget-wide v2, p1, Lcom/google/glass/entity/EntityHelper$EntityData;->lastShareTime:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    check-cast p1, Lcom/google/glass/entity/EntityHelper$EntityData;

    .end local p1
    check-cast p2, Lcom/google/glass/entity/EntityHelper$EntityData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityHelper$9;->compare(Lcom/google/glass/entity/EntityHelper$EntityData;Lcom/google/glass/entity/EntityHelper$EntityData;)I

    move-result v0

    return v0
.end method
