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
    .line 118
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 876
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1336
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    .line 1337
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->initFields()V

    .line 1338
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 821
    iput-byte v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 845
    iput v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 45
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->initFields()V

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 50
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 51
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 52
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 53
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 58
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 60
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :sswitch_0
    const/4 v1, 0x1

    .line 56
    goto :goto_0

    .line 65
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 66
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    .line 67
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v10

    iput-object v10, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 103
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->makeExtensionsImmutable()V

    throw v9

    .line 71
    .restart local v6       #tag:I
    :sswitch_2
    const/4 v5, 0x0

    .line 72
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    :try_start_2
    iget v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 73
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v5

    .line 75
    :cond_1
    sget-object v9, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 76
    if-eqz v5, :cond_2

    .line 77
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {v5, v9}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    .line 78
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 80
    :cond_2
    iget v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 98
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .end local v6           #tag:I
    :catch_1
    move-exception v2

    .line 99
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

    .line 84
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 85
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->valueOf(I)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-result-object v8

    .line 86
    .local v8, value:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    if-nez v8, :cond_3

    .line 87
    const/4 v9, 0x3

    invoke-virtual {v7, v9, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 89
    :cond_3
    iget v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    .line 90
    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 102
    .end local v4           #rawValue:I
    .end local v6           #tag:I
    .end local v8           #value:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    :cond_4
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 103
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->makeExtensionsImmutable()V

    .line 105
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

    .line 821
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 845
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

    .line 821
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 845
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
    .line 108
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 817
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 818
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 819
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 820
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 938
    #calls: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->access$900()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 941
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
    .line 918
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
    .line 924
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
    .line 888
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
    .line 894
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
    .line 929
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
    .line 935
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
    .line 908
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
    .line 914
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
    .line 898
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
    .line 904
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
    .line 813
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
    .line 130
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public getRequestedDimensionsOrBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 847
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    .line 848
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 865
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 850
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 851
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 852
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 855
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 856
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 859
    :cond_2
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 860
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 863
    :cond_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 864
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 865
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
    .line 750
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 751
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 752
    check-cast v1, Ljava/lang/String;

    .line 760
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 754
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 756
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 758
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 760
    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 768
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 769
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 770
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 773
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;

    .line 776
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
    .line 807
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
    .line 786
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

    .line 744
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
    .line 113
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
    .line 879
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 880
    const-string v0, "com.google.googlex.glass.common.proto.MutableImageDownload$ImageDownloadRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 882
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 823
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    .line 824
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 827
    :goto_0
    return v1

    .line 824
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 826
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 939
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 948
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V

    .line 949
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
    .line 943
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
    .line 872
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

    .line 832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getSerializedSize()I

    .line 833
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 836
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 837
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 839
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 840
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 842
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 843
    return-void
.end method
