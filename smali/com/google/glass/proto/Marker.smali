.class public final Lcom/google/glass/proto/Marker;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Marker.java"

# interfaces
.implements Lcom/google/glass/proto/MarkerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/Marker$Builder;,
        Lcom/google/glass/proto/Marker$MarkerType;
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/proto/Marker;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/proto/Marker;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/proto/LatLng;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/glass/proto/Marker$MarkerType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/google/glass/proto/Marker$1;

    invoke-direct {v0}, Lcom/google/glass/proto/Marker$1;-><init>()V

    sput-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/proto/Marker;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 683
    new-instance v0, Lcom/google/glass/proto/Marker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/proto/Marker;-><init>(Z)V

    sput-object v0, Lcom/google/glass/proto/Marker;->defaultInstance:Lcom/google/glass/proto/Marker;

    .line 684
    sget-object v0, Lcom/google/glass/proto/Marker;->defaultInstance:Lcom/google/glass/proto/Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/Marker;->initFields()V

    .line 685
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 264
    iput-byte v8, p0, Lcom/google/glass/proto/Marker;->memoizedIsInitialized:B

    .line 285
    iput v8, p0, Lcom/google/glass/proto/Marker;->memoizedSerializedSize:I

    .line 43
    invoke-direct {p0}, Lcom/google/glass/proto/Marker;->initFields()V

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 48
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 49
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 50
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 51
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 56
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/proto/Marker;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 63
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 64
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/proto/Marker$MarkerType;->valueOf(I)Lcom/google/glass/proto/Marker$MarkerType;

    move-result-object v7

    .line 65
    .local v7, value:Lcom/google/glass/proto/Marker$MarkerType;
    if-nez v7, :cond_1

    .line 66
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/glass/proto/Marker$MarkerType;
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/proto/Marker;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->makeExtensionsImmutable()V

    throw v8

    .line 68
    .restart local v3       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/glass/proto/Marker$MarkerType;
    :cond_1
    :try_start_2
    iget v8, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    .line 69
    iput-object v7, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 90
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/glass/proto/Marker$MarkerType;
    :catch_1
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 75
    .local v4, subBuilder:Lcom/google/glass/proto/LatLng$Builder;
    :try_start_4
    iget v8, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v8, v8, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 76
    iget-object v8, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {v8}, Lcom/google/glass/proto/LatLng;->toBuilder()Lcom/google/glass/proto/LatLng$Builder;

    move-result-object v4

    .line 78
    :cond_2
    sget-object v8, Lcom/google/glass/proto/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/glass/proto/LatLng;

    iput-object v8, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    .line 79
    if-eqz v4, :cond_3

    .line 80
    iget-object v8, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {v4, v8}, Lcom/google/glass/proto/LatLng$Builder;->mergeFrom(Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng$Builder;

    .line 81
    invoke-virtual {v4}, Lcom/google/glass/proto/LatLng$Builder;->buildPartial()Lcom/google/glass/proto/LatLng;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    .line 83
    :cond_3
    iget v8, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/glass/proto/Marker;->bitField0_:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 94
    .end local v4           #subBuilder:Lcom/google/glass/proto/LatLng$Builder;
    .end local v5           #tag:I
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/proto/Marker;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->makeExtensionsImmutable()V

    .line 97
    return-void

    .line 51
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/proto/Marker$1;)V
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
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/glass/proto/Marker;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 264
    iput-byte v0, p0, Lcom/google/glass/proto/Marker;->memoizedIsInitialized:B

    .line 285
    iput v0, p0, Lcom/google/glass/proto/Marker;->memoizedSerializedSize:I

    .line 20
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/glass/proto/Marker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/glass/proto/Marker;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 264
    iput-byte v0, p0, Lcom/google/glass/proto/Marker;->memoizedIsInitialized:B

    .line 285
    iput v0, p0, Lcom/google/glass/proto/Marker;->memoizedSerializedSize:I

    .line 22
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/glass/proto/Marker;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/proto/Marker;Lcom/google/glass/proto/Marker$MarkerType;)Lcom/google/glass/proto/Marker$MarkerType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/glass/proto/Marker;Lcom/google/glass/proto/LatLng;)Lcom/google/glass/proto/LatLng;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/glass/proto/Marker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/glass/proto/Marker;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/proto/Marker;->defaultInstance:Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    iput-object v0, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    .line 262
    invoke-static {}, Lcom/google/glass/proto/LatLng;->getDefaultInstance()Lcom/google/glass/proto/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    .line 263
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 374
    #calls: Lcom/google/glass/proto/Marker$Builder;->create()Lcom/google/glass/proto/Marker$Builder;
    invoke-static {}, Lcom/google/glass/proto/Marker$Builder;->access$100()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 377
    invoke-static {}, Lcom/google/glass/proto/Marker;->newBuilder()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/Marker$Builder;->mergeFrom(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 330
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 334
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/proto/Marker;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 340
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/proto/Marker;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/proto/Marker;->defaultInstance:Lcom/google/glass/proto/Marker;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->getDefaultInstanceForType()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->getDefaultInstanceForType()Lcom/google/glass/proto/Marker;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/proto/LatLng;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    return-object v0
.end method

.method public getLocationOrBuilder()Lcom/google/glass/proto/LatLngOrBuilder;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/proto/Marker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/google/glass/proto/Marker;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 287
    iget v0, p0, Lcom/google/glass/proto/Marker;->memoizedSerializedSize:I

    .line 288
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 301
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 290
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 291
    iget v2, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 292
    iget-object v2, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    invoke-virtual {v2}, Lcom/google/glass/proto/Marker$MarkerType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 295
    :cond_1
    iget v2, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 296
    iget-object v2, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 299
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    iput v0, p0, Lcom/google/glass/proto/Marker;->memoizedSerializedSize:I

    move v1, v0

    .line 301
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/google/glass/proto/Marker$MarkerType;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 230
    iget v1, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 105
    sget-object v0, Lcom/google/glass/proto/MapRenderingService;->internal_static_glass_proto_Marker_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/glass/proto/Marker;

    const-class v2, Lcom/google/glass/proto/Marker$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/google/glass/proto/Marker;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 316
    const-string v0, "com.google.glass.proto.MutableMapRenderingService$Marker"

    invoke-static {v0}, Lcom/google/glass/proto/Marker;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/glass/proto/Marker;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 318
    :cond_0
    sget-object v0, Lcom/google/glass/proto/Marker;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 266
    iget-byte v0, p0, Lcom/google/glass/proto/Marker;->memoizedIsInitialized:B

    .line 267
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 270
    :goto_0
    return v1

    .line 267
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/proto/Marker;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/google/glass/proto/Marker;->newBuilder()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/glass/proto/Marker$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 384
    new-instance v0, Lcom/google/glass/proto/Marker$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/glass/proto/Marker$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/glass/proto/Marker$1;)V

    .line 385
    .local v0, builder:Lcom/google/glass/proto/Marker$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->newBuilderForType()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/Marker;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->newBuilderForType()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/proto/Marker$Builder;
    .locals 1

    .prologue
    .line 379
    invoke-static {p0}, Lcom/google/glass/proto/Marker;->newBuilder(Lcom/google/glass/proto/Marker;)Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->toBuilder()Lcom/google/glass/proto/Marker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->toBuilder()Lcom/google/glass/proto/Marker$Builder;

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
    .line 308
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->getSerializedSize()I

    .line 276
    iget v0, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->type_:Lcom/google/glass/proto/Marker$MarkerType;

    invoke-virtual {v0}, Lcom/google/glass/proto/Marker$MarkerType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 279
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/Marker;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 280
    iget-object v0, p0, Lcom/google/glass/proto/Marker;->location_:Lcom/google/glass/proto/LatLng;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/proto/Marker;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 283
    return-void
.end method
