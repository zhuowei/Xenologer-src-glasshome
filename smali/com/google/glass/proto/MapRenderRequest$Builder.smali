.class public final Lcom/google/glass/proto/MapRenderRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MapRenderRequest.java"

# interfaces
.implements Lcom/google/glass/proto/MapRenderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/glass/proto/MapRenderRequest$Builder;",
        ">;",
        "Lcom/google/glass/proto/MapRenderRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private center_:Lcom/google/glass/proto/LatLng;

.field private height_:I

.field private id_:Ljava/lang/Object;

.field private latSpan_:D

.field private lngSpan_:D

.field private markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/Marker;",
            "Lcom/google/glass/proto/Marker$Builder;",
            "Lcom/google/glass/proto/MarkerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private marker_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/Polyline;",
            "Lcom/google/glass/proto/Polyline$Builder;",
            "Lcom/google/glass/proto/PolylineOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private polyline_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/google/glass/proto/MapRenderRequest$Type;

.field private uri_:Ljava/lang/Object;

.field private width_:I

.field private zoom_:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1477
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 877
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 878
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 882
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1477
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2081
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 883
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 884
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/MapRenderRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Builder;->create()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 893
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMarkerIsMutable()V
    .locals 2

    .prologue
    .line 1772
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 1773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1774
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1776
    :cond_0
    return-void
.end method

.method private ensurePolylineIsMutable()V
    .locals 2

    .prologue
    .line 2084
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2086
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 2088
    :cond_0
    return-void
.end method

.method private getCenterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/glass/proto/LatLng;",
            "Lcom/google/glass/proto/LatLng$Builder;",
            "Lcom/google/glass/proto/LatLngOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1619
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 865
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/Marker;",
            "Lcom/google/glass/proto/Marker$Builder;",
            "Lcom/google/glass/proto/MarkerOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2070
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v3, 0x200

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2076
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2070
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/glass/proto/Polyline;",
            "Lcom/google/glass/proto/Polyline$Builder;",
            "Lcom/google/glass/proto/PolylineOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2382
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v3, 0x400

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 886
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getCenterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 888
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 889
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 891
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMarker(Ljava/lang/Iterable;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/proto/Marker;",
            ">;)",
            "Lcom/google/glass/proto/MapRenderRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 1948
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/proto/Marker;>;"
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1949
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1950
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1952
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1956
    :goto_0
    return-object p0

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllPolyline(Ljava/lang/Iterable;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/glass/proto/Polyline;",
            ">;)",
            "Lcom/google/glass/proto/MapRenderRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 2260
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/proto/Polyline;>;"
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2261
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2262
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2264
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2268
    :goto_0
    return-object p0

    .line 2266
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarker(ILcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1931
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1932
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1933
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1937
    :goto_0
    return-object p0

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarker(ILcom/google/glass/proto/Marker;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1892
    if-nez p2, :cond_0

    .line 1893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1895
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1896
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1897
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1901
    :goto_0
    return-object p0

    .line 1899
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarker(Lcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1913
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1914
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1915
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1919
    :goto_0
    return-object p0

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarker(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1871
    if-nez p1, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1874
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1875
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1876
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1880
    :goto_0
    return-object p0

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarkerBuilder()Lcom/google/glass/proto/Marker$Builder;
    .locals 2

    .prologue
    .line 2040
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/Marker;->getDefaultInstance()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker$Builder;

    return-object v0
.end method

.method public addMarkerBuilder(I)Lcom/google/glass/proto/Marker$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/Marker;->getDefaultInstance()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker$Builder;

    return-object v0
.end method

.method public addPolyline(ILcom/google/glass/proto/Polyline$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2243
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2244
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2245
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2249
    :goto_0
    return-object p0

    .line 2247
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolyline(ILcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2204
    if-nez p2, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2207
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2208
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2209
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2213
    :goto_0
    return-object p0

    .line 2211
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolyline(Lcom/google/glass/proto/Polyline$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2225
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2226
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2231
    :goto_0
    return-object p0

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolyline(Lcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2183
    if-nez p1, :cond_0

    .line 2184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2186
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2187
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2188
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2192
    :goto_0
    return-object p0

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolylineBuilder()Lcom/google/glass/proto/Polyline$Builder;
    .locals 2

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/Polyline;->getDefaultInstance()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline$Builder;

    return-object v0
.end method

.method public addPolylineBuilder(I)Lcom/google/glass/proto/Polyline$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 2364
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/Polyline;->getDefaultInstance()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline$Builder;

    return-object v0
.end method

.method public build()Lcom/google/glass/proto/MapRenderRequest;
    .locals 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    .line 950
    .local v0, result:Lcom/google/glass/proto/MapRenderRequest;
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 951
    invoke-static {v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 953
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/MapRenderRequest;
    .locals 5

    .prologue
    .line 957
    new-instance v1, Lcom/google/glass/proto/MapRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/MapRenderRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/MapRenderRequest$1;)V

    .line 958
    .local v1, result:Lcom/google/glass/proto/MapRenderRequest;
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 959
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 960
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 961
    or-int/lit8 v2, v2, 0x1

    .line 963
    :cond_0
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$502(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 965
    or-int/lit8 v2, v2, 0x2

    .line 967
    :cond_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$602(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 968
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 969
    or-int/lit8 v2, v2, 0x4

    .line 971
    :cond_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$702(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 973
    or-int/lit8 v2, v2, 0x8

    .line 975
    :cond_3
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->width_:I
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$802(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 976
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 977
    or-int/lit8 v2, v2, 0x10

    .line 979
    :cond_4
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->height_:I
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$902(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 980
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 981
    or-int/lit8 v2, v2, 0x20

    .line 983
    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_b

    .line 984
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1002(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    .line 988
    :goto_0
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 989
    or-int/lit8 v2, v2, 0x40

    .line 991
    :cond_6
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->zoom_:F
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1102(Lcom/google/glass/proto/MapRenderRequest;F)F

    .line 992
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 993
    or-int/lit16 v2, v2, 0x80

    .line 995
    :cond_7
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/MapRenderRequest;->access$1202(Lcom/google/glass/proto/MapRenderRequest;D)D

    .line 996
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 997
    or-int/lit16 v2, v2, 0x100

    .line 999
    :cond_8
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/MapRenderRequest;->access$1302(Lcom/google/glass/proto/MapRenderRequest;D)D

    .line 1000
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_c

    .line 1001
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1002
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1003
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1005
    :cond_9
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1402(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    .line 1009
    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 1010
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1011
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1012
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1014
    :cond_a
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1502(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    .line 1018
    :goto_2
    #setter for: Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/MapRenderRequest;->access$1602(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 1019
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onBuilt()V

    .line 1020
    return-object v1

    .line 986
    :cond_b
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1002(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    goto :goto_0

    .line 1007
    :cond_c
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1402(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1016
    :cond_d
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1502(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_2
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 897
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 899
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 900
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 901
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 903
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 904
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 905
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 906
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 907
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 908
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 909
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 913
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 914
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 915
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 916
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 917
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 918
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 919
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 920
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 921
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 922
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 926
    :goto_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 927
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 928
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 932
    :goto_2
    return-object p0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 930
    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCenter()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1574
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1575
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1579
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1580
    return-object p0

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearHeight()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1472
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 1473
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1474
    return-object p0
.end method

.method public clearId()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1222
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1224
    return-object p0
.end method

.method public clearLatSpan()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 1731
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 1733
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1734
    return-object p0
.end method

.method public clearLngSpan()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 1763
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1764
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 1765
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1766
    return-object p0
.end method

.method public clearMarker()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1968
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1969
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1973
    :goto_0
    return-object p0

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPolyline()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2280
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 2281
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2285
    :goto_0
    return-object p0

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearType()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1273
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1274
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1275
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1276
    return-object p0
.end method

.method public clearUri()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1372
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1373
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1374
    return-object p0
.end method

.method public clearWidth()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1440
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 1441
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1442
    return-object p0
.end method

.method public clearZoom()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1679
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1680
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 1681
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1682
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 936
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Builder;->create()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1501
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getCenterBuilder()Lcom/google/glass/proto/LatLng$Builder;
    .locals 1

    .prologue
    .line 1590
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1591
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1592
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getCenterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLng$Builder;

    return-object v0
.end method

.method public getCenterOrBuilder()Lcom/google/glass/proto/LatLngOrBuilder;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLngOrBuilder;

    .line 1605
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 941
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1456
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1163
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1164
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1165
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1167
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1169
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1173
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1186
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1187
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1190
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1193
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getLatSpan()D
    .locals 2

    .prologue
    .line 1706
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    return-wide v0
.end method

.method public getLngSpan()D
    .locals 2

    .prologue
    .line 1748
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    return-wide v0
.end method

.method public getMarker(I)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "index"

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    .line 1820
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    goto :goto_0
.end method

.method public getMarkerBuilder(I)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2001
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker$Builder;

    return-object v0
.end method

.method public getMarkerBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Marker$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2064
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMarkerCount()I
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1806
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getMarkerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1792
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMarkerOrBuilder(I)Lcom/google/glass/proto/MarkerOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MarkerOrBuilder;

    .line 2014
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MarkerOrBuilder;

    goto :goto_0
.end method

.method public getMarkerOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/MarkerOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2029
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolyline(I)Lcom/google/glass/proto/Polyline;
    .locals 1
    .parameter "index"

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline;

    .line 2132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline;

    goto :goto_0
.end method

.method public getPolylineBuilder(I)Lcom/google/glass/proto/Polyline$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2313
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline$Builder;

    return-object v0
.end method

.method public getPolylineBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Polyline$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2376
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPolylineCount()I
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2118
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPolylineList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/proto/Polyline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPolylineOrBuilder(I)Lcom/google/glass/proto/PolylineOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/PolylineOrBuilder;

    .line 2326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/PolylineOrBuilder;

    goto :goto_0
.end method

.method public getPolylineOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/proto/PolylineOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2341
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1305
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1308
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1310
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1314
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1329
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1330
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1331
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1337
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 1652
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    return v0
.end method

.method public hasCenter()Z
    .locals 2

    .prologue
    .line 1488
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeight()Z
    .locals 2

    .prologue
    .line 1450
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1153
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatSpan()Z
    .locals 2

    .prologue
    .line 1695
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngSpan()Z
    .locals 2

    .prologue
    .line 1742
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 1249
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUri()Z
    .locals 2

    .prologue
    .line 1291
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 2

    .prologue
    .line 1406
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZoom()Z
    .locals 2

    .prologue
    .line 1640
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 870
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/MapRenderRequest;

    const-class v2, Lcom/google/glass/proto/MapRenderRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1122
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCenter(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1551
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-static {v0}, Lcom/google/glass/proto/LatLng;->newBuilder(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1558
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1562
    :goto_1
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1563
    return-object p0

    .line 1556
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    goto :goto_0

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 1033
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1118
    :goto_0
    return-object p0

    .line 1034
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1036
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1039
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getType()Lcom/google/glass/proto/MapRenderRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1042
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1043
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1044
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$700(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1045
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1047
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1048
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1050
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1051
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1053
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1054
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getCenter()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeCenter(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1056
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasZoom()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1057
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setZoom(F)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1059
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasLatSpan()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1060
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getLatSpan()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLatSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1062
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasLngSpan()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1063
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getLngSpan()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLngSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1065
    :cond_9
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1066
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1067
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1068
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1069
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1074
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1091
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_11

    .line 1092
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1093
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1094
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1095
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1100
    :goto_3
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1117
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1071
    :cond_c
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1072
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1077
    :cond_d
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1078
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1079
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1080
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1081
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1082
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1083
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_e
    move-object v0, v1

    goto :goto_5

    .line 1087
    :cond_f
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1097
    :cond_10
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 1098
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1103
    :cond_11
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1104
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1105
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1106
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1107
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1108
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1109
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 1113
    :cond_13
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    const/4 v2, 0x0

    .line 1131
    .local v2, parsedMessage:Lcom/google/glass/proto/MapRenderRequest;
    :try_start_0
    sget-object v3, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    if-eqz v2, :cond_0

    .line 1137
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1140
    :cond_0
    return-object p0

    .line 1132
    :catch_0
    move-exception v1

    .line 1133
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    move-object v2, v0

    .line 1134
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1137
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1024
    instance-of v0, p1, Lcom/google/glass/proto/MapRenderRequest;

    if-eqz v0, :cond_0

    .line 1025
    check-cast p1, Lcom/google/glass/proto/MapRenderRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object p0

    .line 1028
    .end local p0
    :goto_0
    return-object p0

    .line 1027
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 859
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeMarker(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1984
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1985
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1986
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1990
    :goto_0
    return-object p0

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removePolyline(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2296
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2297
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2298
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2302
    :goto_0
    return-object p0

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCenter(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1534
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1535
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1539
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1540
    return-object p0

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setCenter(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1513
    if-nez p1, :cond_0

    .line 1514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1516
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1517
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1521
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1522
    return-object p0

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1462
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1463
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 1464
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1465
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1209
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1210
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1211
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1235
    if-nez p1, :cond_0

    .line 1236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1238
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1239
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1240
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1241
    return-object p0
.end method

.method public setLatSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1717
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1718
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 1719
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1720
    return-object p0
.end method

.method public setLngSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1754
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1755
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 1756
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1757
    return-object p0
.end method

.method public setMarker(ILcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1854
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1855
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1856
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1860
    :goto_0
    return-object p0

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setMarker(ILcom/google/glass/proto/Marker;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1833
    if-nez p2, :cond_0

    .line 1834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1836
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1837
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1838
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1842
    :goto_0
    return-object p0

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPolyline(ILcom/google/glass/proto/Polyline$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2166
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2167
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2168
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2172
    :goto_0
    return-object p0

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPolyline(ILcom/google/glass/proto/Polyline;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2145
    if-nez p2, :cond_0

    .line 2146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2148
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2149
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2150
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2154
    :goto_0
    return-object p0

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1261
    if-nez p1, :cond_0

    .line 1262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1264
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1265
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1266
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1267
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1352
    if-nez p1, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1355
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1356
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1357
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1358
    return-object p0
.end method

.method public setUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1388
    if-nez p1, :cond_0

    .line 1389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1391
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1392
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1393
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1394
    return-object p0
.end method

.method public setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1426
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1427
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 1428
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1429
    return-object p0
.end method

.method public setZoom(F)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1664
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1665
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 1666
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1667
    return-object p0
.end method
