.class public interface abstract Lcom/google/googlex/glass/common/proto/BatchRequestOrBuilder;
.super Ljava/lang/Object;
.source "BatchRequestOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getHeader()Lcom/google/googlex/glass/common/proto/BatchHeader;
.end method

.method public abstract getHeaderOrBuilder()Lcom/google/googlex/glass/common/proto/BatchHeaderOrBuilder;
.end method

.method public abstract getRequest(I)Lcom/google/googlex/glass/common/proto/RequestWrapper;
.end method

.method public abstract getRequestCount()I
.end method

.method public abstract getRequestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/RequestWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestOrBuilder(I)Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;
.end method

.method public abstract getRequestOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/RequestWrapperOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHeader()Z
.end method
