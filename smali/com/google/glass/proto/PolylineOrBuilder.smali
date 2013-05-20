.class public interface abstract Lcom/google/glass/proto/PolylineOrBuilder;
.super Ljava/lang/Object;
.source "PolylineOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getColorArgb()I
.end method

.method public abstract getVertex(I)Lcom/google/glass/proto/LatLng;
.end method

.method public abstract getVertexCount()I
.end method

.method public abstract getVertexList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVertexOrBuilder(I)Lcom/google/glass/proto/LatLngOrBuilder;
.end method

.method public abstract getVertexOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidth()F
.end method

.method public abstract hasColorArgb()Z
.end method

.method public abstract hasWidth()Z
.end method
