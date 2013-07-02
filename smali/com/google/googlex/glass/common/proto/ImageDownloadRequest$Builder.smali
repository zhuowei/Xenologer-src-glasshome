.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ImageDownloadRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ImageDownloadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ImageDownloadRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

.field private requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1181
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1297
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 978
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 979
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1181
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1297
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 984
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 985
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 992
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 966
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getRequestedDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getRequestedDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 990
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    .line 1025
    .local v0, result:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1028
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 5

    .prologue
    .line 1032
    new-instance v1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V

    .line 1033
    .local v1, result:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1034
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1035
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1036
    or-int/lit8 v2, v2, 0x1

    .line 1038
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1302(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1040
    or-int/lit8 v2, v2, 0x2

    .line 1042
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 1043
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1402(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1047
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1048
    or-int/lit8 v2, v2, 0x4

    .line 1050
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1502(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1051
    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1602(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;I)I

    .line 1052
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onBuilt()V

    .line 1053
    return-object v1

    .line 1045
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1402(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 996
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 998
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 999
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1000
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1004
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1005
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1006
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1007
    return-object p0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1327
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1328
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1329
    return-object p0
.end method

.method public clearRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1254
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1255
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1259
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1260
    return-object p0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1163
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1164
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1165
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2

    .prologue
    .line 1011
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

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
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 1020
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1016
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0
.end method

.method public getRequestedDimensionsBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;
    .locals 1

    .prologue
    .line 1266
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1267
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1268
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getRequestedDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    return-object v0
.end method

.method public getRequestedDimensionsOrBuilder()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1117
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1118
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1120
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1122
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1126
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

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1135
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1136
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1139
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1142
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
    .line 1302
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

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
    .line 1188
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

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

    .line 1110
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

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
    .line 971
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1066
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1079
    :goto_0
    return-object p0

    .line 1067
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1069
    #getter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1300(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1070
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1072
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasRequestedDimensions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1075
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasCropType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1076
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1078
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1090
    const/4 v2, 0x0

    .line 1092
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    if-eqz v2, :cond_0

    .line 1098
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1101
    :cond_0
    return-object p0

    .line 1093
    :catch_0
    move-exception v1

    .line 1094
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-object v2, v0

    .line 1095
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1098
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1057
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    if-eqz v0, :cond_0

    .line 1058
    check-cast p1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object p0

    .line 1061
    .end local p0
    :goto_0
    return-object p0

    .line 1060
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
    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 960
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

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
    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

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
    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 960
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

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
    .line 960
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1235
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1242
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1246
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1247
    return-object p0

    .line 1240
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1314
    if-nez p1, :cond_0

    .line 1315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1317
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1318
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1319
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1320
    return-object p0
.end method

.method public setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1223
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1227
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1228
    return-object p0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1205
    if-nez p1, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1209
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1213
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1214
    return-object p0

    .line 1211
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1154
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1155
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1156
    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1176
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1177
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1178
    return-object p0
.end method
