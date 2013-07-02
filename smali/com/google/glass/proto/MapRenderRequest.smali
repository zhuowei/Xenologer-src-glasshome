.class public final Lcom/google/glass/proto/MapRenderRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MapRenderRequest.java"

# interfaces
.implements Lcom/google/glass/proto/MapRenderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderRequest$Builder;,
        Lcom/google/glass/proto/MapRenderRequest$Type;
    }
.end annotation


# static fields
.field public static final CENTER_FIELD_NUMBER:I = 0x5

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LAT_SPAN_FIELD_NUMBER:I = 0x8

.field public static final LNG_SPAN_FIELD_NUMBER:I = 0x9

.field public static final MARKER_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLYLINE_FIELD_NUMBER:I = 0xb

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final URI_FIELD_NUMBER:I = 0xc

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field public static final ZOOM_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/glass/proto/MapRenderRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private center_:Lcom/google/glass/proto/LatLng;

.field private height_:I

.field private id_:Ljava/lang/Object;

.field private latSpan_:D

.field private lngSpan_:D

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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private uri_:Ljava/lang/Object;

.field private width_:I

.field private zoom_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$1;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderRequest$1;-><init>()V

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 776
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2397
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/proto/MapRenderRequest;-><init>(Z)V

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest;->defaultInstance:Lcom/google/glass/proto/MapRenderRequest;

    .line 2398
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->defaultInstance:Lcom/google/glass/proto/MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderRequest;->initFields()V

    .line 2399
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/16 v12, 0x400

    const/16 v11, 0x200

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 665
    iput-byte v9, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedIsInitialized:B

    .line 713
    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/glass/proto/MapRenderRequest;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 49
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 52
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/glass/proto/MapRenderRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 65
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 142
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    and-int/lit16 v10, v3, 0x200

    if-ne v10, v11, :cond_1

    .line 149
    iget-object v10, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    .line 151
    :cond_1
    and-int/lit16 v10, v3, 0x400

    if-ne v10, v12, :cond_2

    .line 152
    iget-object v10, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    .line 154
    :cond_2
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/proto/MapRenderRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->makeExtensionsImmutable()V

    throw v9

    .line 70
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 71
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/glass/proto/MapRenderRequest$Type;->valueOf(I)Lcom/google/glass/proto/MapRenderRequest$Type;

    move-result-object v8

    .line 72
    .local v8, value:Lcom/google/glass/proto/MapRenderRequest$Type;
    if-nez v8, :cond_3

    .line 73
    const/4 v9, 0x2

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 144
    .end local v4           #rawValue:I
    .end local v6           #tag:I
    .end local v8           #value:Lcom/google/glass/proto/MapRenderRequest$Type;
    :catch_1
    move-exception v2

    .line 145
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #rawValue:I
    .restart local v6       #tag:I
    .restart local v8       #value:Lcom/google/glass/proto/MapRenderRequest$Type;
    :cond_3
    :try_start_4
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 76
    iput-object v8, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    goto :goto_0

    .line 81
    .end local v4           #rawValue:I
    .end local v8           #value:Lcom/google/glass/proto/MapRenderRequest$Type;
    :sswitch_3
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x8

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    goto :goto_0

    .line 86
    :sswitch_4
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x10

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    goto/16 :goto_0

    .line 91
    :sswitch_5
    const/4 v5, 0x0

    .line 92
    .local v5, subBuilder:Lcom/google/glass/proto/LatLng$Builder;
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_4

    .line 93
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {v9}, Lcom/google/glass/proto/LatLng;->toBuilder()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v5

    .line 95
    :cond_4
    sget-object v9, Lcom/google/glass/proto/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/glass/proto/LatLng;

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    .line 96
    if-eqz v5, :cond_5

    .line 97
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {v5, v9}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    .line 98
    invoke-virtual {v5}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    .line 100
    :cond_5
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x20

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    goto/16 :goto_0

    .line 104
    .end local v5           #subBuilder:Lcom/google/glass/proto/LatLng$Builder;
    :sswitch_6
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x40

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v9

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    goto/16 :goto_0

    .line 109
    :sswitch_7
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit16 v9, v9, 0x80

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    goto/16 :goto_0

    .line 114
    :sswitch_8
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit16 v9, v9, 0x100

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v9

    iput-wide v9, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    goto/16 :goto_0

    .line 119
    :sswitch_9
    and-int/lit16 v9, v3, 0x200

    if-eq v9, v11, :cond_6

    .line 120
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    .line 121
    or-int/lit16 v3, v3, 0x200

    .line 123
    :cond_6
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    sget-object v10, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 127
    :sswitch_a
    and-int/lit16 v9, v3, 0x400

    if-eq v9, v12, :cond_7

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    .line 129
    or-int/lit16 v3, v3, 0x400

    .line 131
    :cond_7
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    sget-object v10, Lcom/google/glass/proto/Polyline;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 135
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 136
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    .line 137
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 148
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :cond_8
    and-int/lit16 v9, v3, 0x200

    if-ne v9, v11, :cond_9

    .line 149
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    .line 151
    :cond_9
    and-int/lit16 v9, v3, 0x400

    if-ne v9, v12, :cond_a

    .line 152
    iget-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    .line 154
    :cond_a
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/proto/MapRenderRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 155
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->makeExtensionsImmutable()V

    .line 157
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x41 -> :sswitch_7
        0x49 -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/proto/MapRenderRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/glass/proto/MapRenderRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 665
    iput-byte v0, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedIsInitialized:B

    .line 713
    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/MapRenderRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/glass/proto/MapRenderRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 665
    iput-byte v0, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedIsInitialized:B

    .line 713
    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/glass/proto/MapRenderRequest;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    return p1
.end method

.method static synthetic access$1202(Lcom/google/glass/proto/MapRenderRequest;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/google/glass/proto/MapRenderRequest;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/glass/proto/MapRenderRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/glass/proto/MapRenderRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/glass/proto/MapRenderRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/glass/proto/MapRenderRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/glass/proto/MapRenderRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/glass/proto/MapRenderRequest;Lcom/google/glass/proto/MapRenderRequest$Type;)Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/proto/MapRenderRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/proto/MapRenderRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/glass/proto/MapRenderRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/glass/proto/MapRenderRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/proto/MapRenderRequest;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->defaultInstance:Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    .line 656
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    .line 657
    iput v3, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    .line 658
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    .line 660
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    .line 661
    iput-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    .line 662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    .line 663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    .line 664
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 838
    #calls: Lcom/google/glass/proto/MapRenderRequest$Builder;->create()Lcom/google/glass/proto/MapRenderRequest$Builder;
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Builder;->access$100()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 841
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderRequest$Builder;->mergeFrom(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 788
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 794
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 798
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/MapRenderRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 804
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method


# virtual methods
.method public getCenter()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    return-object v0
.end method

.method public getCenterOrBuilder()Lcom/google/glass/proto/LatLngOrBuilder;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->defaultInstance:Lcom/google/glass/proto/MapRenderRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getDefaultInstanceForType()Lcom/google/glass/proto/MapRenderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    .line 293
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 294
    check-cast v1, Ljava/lang/String;

    .line 302
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 296
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 298
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 302
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    .line 315
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 316
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 319
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->id_:Ljava/lang/Object;

    .line 322
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
    .line 524
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    return-wide v0
.end method

.method public getLngSpan()D
    .locals 2

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    return-wide v0
.end method

.method public getMarker(I)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "index"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public getMarkerCount()I
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 552
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    return-object v0
.end method

.method public getMarkerOrBuilder(I)Lcom/google/glass/proto/MarkerOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MarkerOrBuilder;

    return-object v0
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
    .line 563
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/proto/MapRenderRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPolyline(I)Lcom/google/glass/proto/Polyline;
    .locals 1
    .parameter "index"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Polyline;

    return-object v0
.end method

.method public getPolylineCount()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 607
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    return-object v0
.end method

.method public getPolylineOrBuilder(I)Lcom/google/glass/proto/PolylineOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/PolylineOrBuilder;

    return-object v0
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
    .line 618
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 715
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedSerializedSize:I

    .line 716
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 765
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 718
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 719
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 723
    :cond_1
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 724
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {v3}, Lcom/google/glass/proto/MapRenderRequest$Type;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 727
    :cond_2
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_3

    .line 728
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 731
    :cond_3
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 732
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 735
    :cond_4
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 736
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 739
    :cond_5
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 740
    const/4 v3, 0x6

    iget v4, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 743
    :cond_6
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 744
    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    invoke-static {v7, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 747
    :cond_7
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 748
    const/16 v3, 0x9

    iget-wide v4, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v3

    add-int/2addr v1, v3

    .line 751
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 752
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 755
    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 756
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 759
    :cond_a
    iget v3, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_b

    .line 760
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 763
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 764
    iput v1, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 765
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getType()Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 4

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    .line 368
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 369
    check-cast v1, Ljava/lang/String;

    .line 377
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 371
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 373
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    iput-object v2, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 377
    goto :goto_0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    .line 393
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 394
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 397
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/proto/MapRenderRequest;->uri_:Ljava/lang/Object;

    .line 400
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
    .line 424
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    return v0
.end method

.method public hasCenter()Z
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 433
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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

    .line 282
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 513
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 533
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 332
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 354
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 414
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 487
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

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
    .line 165
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_MapRenderRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/MapRenderRequest;

    const-class v2, Lcom/google/glass/proto/MapRenderRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 780
    const-string v0, "com.google.glass.proto.MutableMapRenderingService$MapRenderRequest"

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 782
    :cond_0
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 667
    iget-byte v0, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedIsInitialized:B

    .line 668
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 671
    :goto_0
    return v1

    .line 668
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 670
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/proto/MapRenderRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 839
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 848
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/glass/proto/MapRenderRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/MapRenderRequest$1;)V

    .line 849
    .local v0, builder:Lcom/google/glass/proto/MapRenderRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->newBuilderForType()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->newBuilderForType()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;
    .locals 1

    .prologue
    .line 843
    invoke-static {p0}, Lcom/google/glass/proto/MapRenderRequest;->newBuilder(Lcom/google/glass/proto/MapRenderRequest;)Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->toBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->toBuilder()Lcom/google/glass/proto/MapRenderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 676
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getSerializedSize()I

    .line 677
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 680
    :cond_0
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 681
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->type_:Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderRequest$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 683
    :cond_1
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_2

    .line 684
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/proto/MapRenderRequest;->width_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 686
    :cond_2
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 687
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->height_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 689
    :cond_3
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 690
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderRequest;->center_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 692
    :cond_4
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 693
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/proto/MapRenderRequest;->zoom_:F

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 695
    :cond_5
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 696
    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderRequest;->latSpan_:D

    invoke-virtual {p1, v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 698
    :cond_6
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 699
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderRequest;->lngSpan_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 701
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 702
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->marker_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_8
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 705
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderRequest;->polyline_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 707
    :cond_9
    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_a

    .line 708
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getUriBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 710
    :cond_a
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 711
    return-void
.end method
