.class public interface abstract Lcom/google/glass/proto/MapRenderRequestOrBuilder;
.super Ljava/lang/Object;
.source "MapRenderRequestOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getCenter()Lcom/google/glass/proto/LatLng;
.end method

.method public abstract getCenterOrBuilder()Lcom/google/glass/proto/LatLngOrBuilder;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLatSpan()D
.end method

.method public abstract getLngSpan()D
.end method

.method public abstract getMarker(I)Lcom/google/glass/proto/Marker;
.end method

.method public abstract getMarkerCount()I
.end method

.method public abstract getMarkerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Marker;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMarkerOrBuilder(I)Lcom/google/glass/proto/MarkerOrBuilder;
.end method

.method public abstract getMarkerOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/MarkerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolyline(I)Lcom/google/glass/proto/Polyline;
.end method

.method public abstract getPolylineCount()I
.end method

.method public abstract getPolylineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Polyline;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolylineOrBuilder(I)Lcom/google/glass/proto/PolylineOrBuilder;
.end method

.method public abstract getPolylineOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/PolylineOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/google/glass/proto/MapRenderRequest$Type;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract getUriBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWidth()I
.end method

.method public abstract getZoom()F
.end method

.method public abstract hasCenter()Z
.end method

.method public abstract hasHeight()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLatSpan()Z
.end method

.method public abstract hasLngSpan()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasUri()Z
.end method

.method public abstract hasWidth()Z
.end method

.method public abstract hasZoom()Z
.end method
