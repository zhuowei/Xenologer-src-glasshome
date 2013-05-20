.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ImageDownloadRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ImageDownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;,
        Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;,
        Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;,
        Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    }
.end annotation


# static fields
.field public static final CROP_TYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTED_DIMENSIONS_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 875
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1332
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    .line 1333
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->initFields()V

    .line 1334
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

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 820
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 844
    iput v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 45
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->initFields()V

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 50
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 51
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 53
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 58
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :sswitch_0
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 65
    :sswitch_1
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    .line 66
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    .end local v5           #tag:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->makeExtensionsImmutable()V

    throw v8

    .line 70
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 71
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    :try_start_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v8, v8, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 72
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v4

    .line 74
    :cond_1
    sget-object v8, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 75
    if-eqz v4, :cond_2

    .line 76
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v4, v8}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 77
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 79
    :cond_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 97
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .end local v5           #tag:I
    :catch_1
    move-exception v1

    .line 98
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

    .line 83
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 84
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->valueOf(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-result-object v7

    .line 85
    .local v7, value:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    if-nez v7, :cond_3

    .line 86
    const/4 v8, 0x3

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 88
    :cond_3
    iget v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    .line 89
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 101
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->makeExtensionsImmutable()V

    .line 104
    return-void

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V
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
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 21
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 820
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 844
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 22
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 820
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 844
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 24
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 816
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 817
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 818
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 819
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 937
    #calls: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->access$900()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 940
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 917
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 893
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 928
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 907
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 897
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 903
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method


# virtual methods
.method public getCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public getRequestedDimensionsOrBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 846
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 847
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 864
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 849
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 850
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 854
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 855
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 858
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 859
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 862
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 863
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 864
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 749
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 750
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 751
    check-cast v1, Ljava/lang/String;

    .line 759
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 753
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 755
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 759
    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 767
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 768
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 769
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 772
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 775
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

.method public hasCropType()Z
    .locals 2

    .prologue
    .line 806
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

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

.method public hasRequestedDimensions()Z
    .locals 2

    .prologue
    .line 785
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 743
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

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
    .line 112
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 879
    const-string v0, "com.google.googlex.glass.common.proto.MutableImageDownload$ImageDownloadRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 881
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 822
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 823
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 826
    :goto_0
    return v1

    .line 823
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 825
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 938
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 947
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V

    .line 948
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 942
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

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
    .line 871
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

    .line 831
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getSerializedSize()I

    .line 832
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 835
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 836
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 838
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 839
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 841
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 842
    return-void
.end method
