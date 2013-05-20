.class public interface abstract Lcom/google/googlex/glass/common/proto/EntitySyncResponseOrBuilder;
.super Ljava/lang/Object;
.source "EntitySyncResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getEntities(I)Lcom/google/googlex/glass/common/proto/Entity;
.end method

.method public abstract getEntitiesCount()I
.end method

.method public abstract getEntitiesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntitiesOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
.end method

.method public abstract getEntitiesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;",
            ">;"
        }
    .end annotation
.end method
