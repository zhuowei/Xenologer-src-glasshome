.class public interface abstract Lcom/google/googlex/glass/common/proto/ShareTargetResponseOrBuilder;
.super Ljava/lang/Object;
.source "ShareTargetResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getResponseCode()Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
.end method

.method public abstract getTargets(I)Lcom/google/googlex/glass/common/proto/Entity;
.end method

.method public abstract getTargetsCount()I
.end method

.method public abstract getTargetsList()Ljava/util/List;
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

.method public abstract getTargetsOrBuilder(I)Lcom/google/googlex/glass/common/proto/EntityOrBuilder;
.end method

.method public abstract getTargetsOrBuilderList()Ljava/util/List;
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

.method public abstract hasResponseCode()Z
.end method
