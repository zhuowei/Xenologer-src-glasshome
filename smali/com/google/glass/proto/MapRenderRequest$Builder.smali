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
    .line 874
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1239
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1469
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 875
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 876
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 880
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1239
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1469
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 881
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->maybeForceBuilderInitialization()V

    .line 882
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/MapRenderRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Builder;->create()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 891
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureMarkerIsMutable()V
    .locals 2

    .prologue
    .line 1764
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 1765
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1766
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1768
    :cond_0
    return-void
.end method

.method private ensurePolylineIsMutable()V
    .locals 2

    .prologue
    .line 2076
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 2077
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2078
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 2080
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
    .line 1610
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1611
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 863
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
    .line 2061
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2062
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

    .line 2068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2062
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
    .line 2373
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2374
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

    .line 2380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 884
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getCenterFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 886
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 887
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 889
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
    .line 1940
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/proto/Marker;>;"
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1941
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1942
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1944
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1948
    :goto_0
    return-object p0

    .line 1946
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
    .line 2252
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/glass/proto/Polyline;>;"
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2253
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2254
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2256
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2260
    :goto_0
    return-object p0

    .line 2258
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
    .line 1922
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1923
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1924
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1925
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1929
    :goto_0
    return-object p0

    .line 1927
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
    .line 1883
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1884
    if-nez p2, :cond_0

    .line 1885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1887
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1888
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1889
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1893
    :goto_0
    return-object p0

    .line 1891
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarker(Lcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1905
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1906
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1911
    :goto_0
    return-object p0

    .line 1909
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
    .line 1862
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1863
    if-nez p1, :cond_0

    .line 1864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1866
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1867
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1868
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1872
    :goto_0
    return-object p0

    .line 1870
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addMarkerBuilder()Lcom/google/glass/proto/Marker$Builder;
    .locals 2

    .prologue
    .line 2032
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
    .line 2044
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
    .line 2234
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2235
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2236
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2237
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2241
    :goto_0
    return-object p0

    .line 2239
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
    .line 2195
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2196
    if-nez p2, :cond_0

    .line 2197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2199
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2200
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2201
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2205
    :goto_0
    return-object p0

    .line 2203
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolyline(Lcom/google/glass/proto/Polyline$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2217
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2218
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2219
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2223
    :goto_0
    return-object p0

    .line 2221
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
    .line 2174
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2175
    if-nez p1, :cond_0

    .line 2176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2178
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2179
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2180
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2184
    :goto_0
    return-object p0

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPolylineBuilder()Lcom/google/glass/proto/Polyline$Builder;
    .locals 2

    .prologue
    .line 2344
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
    .line 2356
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
    .line 947
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    .line 948
    .local v0, result:Lcom/google/glass/proto/MapRenderRequest;
    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    invoke-static {v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 951
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->build()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/proto/MapRenderRequest;
    .locals 5

    .prologue
    .line 955
    new-instance v1, Lcom/google/glass/proto/MapRenderRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/proto/MapRenderRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/MapRenderRequest$1;)V

    .line 956
    .local v1, result:Lcom/google/glass/proto/MapRenderRequest;
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 957
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 958
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 959
    or-int/lit8 v2, v2, 0x1

    .line 961
    :cond_0
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$502(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 963
    or-int/lit8 v2, v2, 0x2

    .line 965
    :cond_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$602(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 966
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 967
    or-int/lit8 v2, v2, 0x4

    .line 969
    :cond_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$702(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 971
    or-int/lit8 v2, v2, 0x8

    .line 973
    :cond_3
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->width_:I
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$802(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 974
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 975
    or-int/lit8 v2, v2, 0x10

    .line 977
    :cond_4
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->height_:I
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$902(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 978
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 979
    or-int/lit8 v2, v2, 0x20

    .line 981
    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_b

    .line 982
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1002(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    .line 986
    :goto_0
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 987
    or-int/lit8 v2, v2, 0x40

    .line 989
    :cond_6
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->zoom_:F
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1102(Lcom/google/glass/proto/MapRenderRequest;F)F

    .line 990
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 991
    or-int/lit16 v2, v2, 0x80

    .line 993
    :cond_7
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/MapRenderRequest;->access$1202(Lcom/google/glass/proto/MapRenderRequest;D)D

    .line 994
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 995
    or-int/lit16 v2, v2, 0x100

    .line 997
    :cond_8
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D
    invoke-static {v1, v3, v4}, Lcom/google/glass/proto/MapRenderRequest;->access$1302(Lcom/google/glass/proto/MapRenderRequest;D)D

    .line 998
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_c

    .line 999
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1000
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1001
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1003
    :cond_9
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1402(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    .line 1007
    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 1008
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1009
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1010
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1012
    :cond_a
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1502(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    .line 1016
    :goto_2
    #setter for: Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/proto/MapRenderRequest;->access$1602(Lcom/google/glass/proto/MapRenderRequest;I)I

    .line 1017
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onBuilt()V

    .line 1018
    return-object v1

    .line 984
    :cond_b
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/glass/proto/LatLng;

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1002(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;

    goto :goto_0

    .line 1005
    :cond_c
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/proto/MapRenderRequest;->access$1402(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1014
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
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->buildPartial()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 895
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 897
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 898
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 899
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 901
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 902
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 903
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 904
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 905
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 906
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 907
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 911
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 912
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 913
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 914
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 915
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 916
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 917
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 918
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 919
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 920
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 924
    :goto_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 926
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 930
    :goto_2
    return-object p0

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 928
    :cond_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clear()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCenter()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1566
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1567
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1571
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1572
    return-object p0

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearHeight()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1463
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1464
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 1465
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1466
    return-object p0
.end method

.method public clearId()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1216
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1217
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1218
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1219
    return-object p0
.end method

.method public clearLatSpan()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 1723
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1724
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 1725
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1726
    return-object p0
.end method

.method public clearLngSpan()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 1755
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1756
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 1757
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1758
    return-object p0
.end method

.method public clearMarker()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1960
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1961
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1965
    :goto_0
    return-object p0

    .line 1963
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPolyline()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 2272
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 2273
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2277
    :goto_0
    return-object p0

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearType()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1269
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1270
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1271
    return-object p0
.end method

.method public clearUri()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1364
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/MapRenderRequest;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1366
    return-object p0
.end method

.method public clearWidth()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 1433
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1434
    return-object p0
.end method

.method public clearZoom()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 1671
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1672
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 1673
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1674
    return-object p0
.end method

.method public clone()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2

    .prologue
    .line 934
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
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 857
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
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->clone()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1493
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
    .line 1582
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1583
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1584
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
    .line 1594
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/LatLngOrBuilder;

    .line 1597
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 939
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1162
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1163
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1168
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1180
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1181
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1182
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1185
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1188
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
    .line 1698
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    return-wide v0
.end method

.method public getLngSpan()D
    .locals 2

    .prologue
    .line 1740
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    return-wide v0
.end method

.method public getMarker(I)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "index"

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    .line 1812
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
    .line 1993
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
    .line 2056
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getMarkerFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMarkerCount()I
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1798
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
    .line 1781
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1784
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
    .line 2004
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MarkerOrBuilder;

    .line 2006
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
    .line 2018
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2021
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
    .line 2121
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline;

    .line 2124
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
    .line 2305
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
    .line 2368
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPolylineCount()I
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2110
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
    .line 2093
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2096
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
    .line 2316
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/PolylineOrBuilder;

    .line 2318
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
    .line 2330
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2333
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
    .line 1250
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1300
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1301
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1303
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1306
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1322
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1323
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1326
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1329
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
    .line 1408
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 1644
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    return v0
.end method

.method public hasCenter()Z
    .locals 2

    .prologue
    .line 1480
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
    .line 1442
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

    .line 1151
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
    .line 1687
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
    .line 1734
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
    .line 1244
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
    .line 1286
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
    .line 1398
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
    .line 1632
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
    .line 868
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
    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method public mergeCenter(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1543
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    invoke-static {v0}, Lcom/google/glass/proto/LatLng;->newBuilder(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1550
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1554
    :goto_1
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1555
    return-object p0

    .line 1548
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    goto :goto_0

    .line 1552
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

    .line 1031
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1116
    :goto_0
    return-object p0

    .line 1032
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1034
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1035
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1037
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getType()Lcom/google/glass/proto/MapRenderRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1040
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1041
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1042
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$700(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1043
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1045
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1048
    :cond_4
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1049
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1051
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasCenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1052
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getCenter()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeCenter(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1054
    :cond_6
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasZoom()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1055
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getZoom()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setZoom(F)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1057
    :cond_7
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasLatSpan()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1058
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getLatSpan()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLatSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1060
    :cond_8
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->hasLngSpan()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1061
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getLngSpan()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/proto/MapRenderRequest$Builder;->setLngSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1063
    :cond_9
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_d

    .line 1064
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1065
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1066
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1067
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1072
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1089
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_11

    .line 1090
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1091
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1092
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1093
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1098
    :goto_3
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1115
    :cond_b
    :goto_4
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1069
    :cond_c
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1070
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1075
    :cond_d
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1076
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1077
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1078
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1079
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    .line 1080
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1081
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

    .line 1085
    :cond_f
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1095
    :cond_10
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 1096
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1101
    :cond_11
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1102
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1103
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1104
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1105
    #getter for: Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/proto/MapRenderRequest;->access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    .line 1106
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1107
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->getPolylineFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_12
    iput-object v1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 1111
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
    .line 1127
    const/4 v2, 0x0

    .line 1129
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

    .line 1134
    if-eqz v2, :cond_0

    .line 1135
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    .line 1138
    :cond_0
    return-object p0

    .line 1130
    :catch_0
    move-exception v1

    .line 1131
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    move-object v2, v0

    .line 1132
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1134
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1135
    invoke-virtual {p0, v2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1022
    instance-of v0, p1, Lcom/google/glass/proto/MapRenderRequest;

    if-eqz v0, :cond_0

    .line 1023
    check-cast p1, Lcom/google/glass/proto/MapRenderRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object p0

    .line 1026
    .end local p0
    :goto_0
    return-object p0

    .line 1025
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
    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 857
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
    .line 857
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
    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 857
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
    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeMarker(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1977
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1978
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1982
    :goto_0
    return-object p0

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removePolyline(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2288
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2289
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2290
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2294
    :goto_0
    return-object p0

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setCenter(Lcom/google/glass/proto/LatLng$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1526
    invoke-virtual {p1}, Lcom/google/glass/proto/LatLng$Builder;->build()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1527
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1531
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1532
    return-object p0

    .line 1529
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
    .line 1504
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1505
    if-nez p1, :cond_0

    .line 1506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1508
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->center_:Lcom/google/glass/proto/LatLng;

    .line 1509
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1513
    :goto_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1514
    return-object p0

    .line 1511
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->centerBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setHeight(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1454
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1455
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->height_:I

    .line 1456
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1457
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1200
    if-nez p1, :cond_0

    .line 1201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1203
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1204
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1205
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1206
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1230
    if-nez p1, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1233
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1234
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->id_:Ljava/lang/Object;

    .line 1235
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1236
    return-object p0
.end method

.method public setLatSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1709
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1710
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->latSpan_:D

    .line 1711
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1712
    return-object p0
.end method

.method public setLngSpan(D)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1746
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1747
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->lngSpan_:D

    .line 1748
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1749
    return-object p0
.end method

.method public setMarker(ILcom/google/glass/proto/Marker$Builder;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1846
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1847
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Marker$Builder;->build()Lcom/google/glass/proto/Marker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1848
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1852
    :goto_0
    return-object p0

    .line 1850
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
    .line 1824
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->markerBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1825
    if-nez p2, :cond_0

    .line 1826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1828
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensureMarkerIsMutable()V

    .line 1829
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->marker_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1830
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1834
    :goto_0
    return-object p0

    .line 1832
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
    .line 2157
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2158
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2159
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/glass/proto/Polyline$Builder;->build()Lcom/google/glass/proto/Polyline;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2160
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2164
    :goto_0
    return-object p0

    .line 2162
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
    .line 2136
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2137
    if-nez p2, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2140
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->ensurePolylineIsMutable()V

    .line 2141
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 2146
    :goto_0
    return-object p0

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->polylineBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setType(Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1256
    if-nez p1, :cond_0

    .line 1257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1259
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1260
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 1261
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1262
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1347
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1348
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1349
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1350
    return-object p0
.end method

.method public setUriBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1380
    if-nez p1, :cond_0

    .line 1381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1383
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1384
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->uri_:Ljava/lang/Object;

    .line 1385
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1386
    return-object p0
.end method

.method public setWidth(I)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1418
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1419
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->width_:I

    .line 1420
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1421
    return-object p0
.end method

.method public setZoom(F)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1656
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->bitField0_:I

    .line 1657
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest$Builder;->zoom_:F

    .line 1658
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->onChanged()V

    .line 1659
    return-object p0
.end method
