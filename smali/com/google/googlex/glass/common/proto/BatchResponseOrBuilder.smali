.class public interface abstract Lcom/google/googlex/glass/common/proto/BatchResponseOrBuilder;
.super Ljava/lang/Object;
.source "BatchResponseOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getResponse(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper;
.end method

.method public abstract getResponseCount()I
.end method

.method public abstract getResponseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponseOrBuilder(I)Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;
.end method

.method public abstract getResponseOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapperOrBuilder;",
            ">;"
        }
    .end annotation
.end method
