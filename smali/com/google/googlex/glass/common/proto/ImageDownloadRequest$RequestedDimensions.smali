.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ImageDownloadRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestedDimensions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_PIXELS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_PIXELS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private widthPixels_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 355
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    .line 453
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 730
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 731
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->initFields()V

    .line 732
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 301
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 405
    iput-byte v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedIsInitialized:B

    .line 426
    iput v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedSerializedSize:I

    .line 302
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->initFields()V

    .line 303
    const/4 v2, 0x0

    .line 304
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 307
    .local v4, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 308
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 309
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 310
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 315
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 317
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :sswitch_0
    const/4 v0, 0x1

    .line 313
    goto :goto_0

    .line 322
    :sswitch_1
    iget v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 323
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 333
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->makeExtensionsImmutable()V

    throw v5

    .line 327
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 328
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 335
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 336
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->makeExtensionsImmutable()V

    .line 342
    return-void

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 272
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 278
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 405
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedIsInitialized:B

    .line 426
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedSerializedSize:I

    .line 279
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 281
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 405
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedIsInitialized:B

    .line 426
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedSerializedSize:I

    .line 281
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_RequestedDimensions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 403
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 404
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 1

    .prologue
    .line 515
    #calls: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->access$200()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 518
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 481
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->defaultInstance:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    return-object v0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 428
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedSerializedSize:I

    .line 429
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 442
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 431
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 432
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 433
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 436
    :cond_1
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 437
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 441
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedSerializedSize:I

    move v1, v0

    .line 442
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

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

.method public hasWidthPixels()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 377
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

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
    .line 350
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_RequestedDimensions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    const-class v2, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 457
    const-string v0, "com.google.googlex.glass.common.proto.MutableImageDownload$ImageDownloadRequest$RequestedDimensions"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 459
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 407
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedIsInitialized:B

    .line 408
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 411
    :goto_0
    return v1

    .line 408
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 410
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 525
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V

    .line 526
    .local v0, builder:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilderForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 1

    .prologue
    .line 520
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->toBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

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
    .line 449
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

    .line 416
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getSerializedSize()I

    .line 417
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 418
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 420
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 424
    return-void
.end method
