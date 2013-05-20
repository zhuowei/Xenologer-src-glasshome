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
    .line 976
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1177
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1293
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 977
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 978
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1177
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1293
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 983
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->maybeForceBuilderInitialization()V

    .line 984
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 991
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 965
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
    .line 1282
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1283
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 986
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getRequestedDimensionsFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 989
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    .line 1024
    .local v0, result:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1025
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1027
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 5

    .prologue
    .line 1031
    new-instance v1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$1;)V

    .line 1032
    .local v1, result:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1033
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1034
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1035
    or-int/lit8 v2, v2, 0x1

    .line 1037
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1302(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1039
    or-int/lit8 v2, v2, 0x2

    .line 1041
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 1042
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1402(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1046
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1047
    or-int/lit8 v2, v2, 0x4

    .line 1049
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1502(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1050
    #setter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1602(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;I)I

    .line 1051
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onBuilt()V

    .line 1052
    return-object v1

    .line 1044
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
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 995
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 997
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 998
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 999
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1003
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1004
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1005
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1006
    return-object p0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1323
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;->NO_CROP:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1324
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1325
    return-object p0
.end method

.method public clearRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1250
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1251
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1255
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1256
    return-object p0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearUrl()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1159
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1160
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1161
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2

    .prologue
    .line 1010
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
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 959
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
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;
    .locals 1

    .prologue
    .line 1019
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1015
    sget-object v0, Lcom/google/googlex/glass/common/proto/ImageDownload;->internal_static_googlex_glass_common_proto_ImageDownloadRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1193
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
    .line 1262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1264
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
    .line 1270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensionsOrBuilder;

    .line 1273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1116
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1117
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1122
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

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1131
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1132
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1138
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
    .line 1298
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
    .line 1184
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

    .line 1109
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
    .line 970
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
    .line 1082
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1065
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1078
    :goto_0
    return-object p0

    .line 1066
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1068
    #getter for: Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->access$1300(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1069
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1071
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasRequestedDimensions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getRequestedDimensions()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1074
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->hasCropType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1075
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;->getCropType()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1077
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
    .line 1089
    const/4 v2, 0x0

    .line 1091
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

    .line 1096
    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    .line 1100
    :cond_0
    return-object p0

    .line 1092
    :catch_0
    move-exception v1

    .line 1093
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    move-object v2, v0

    .line 1094
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1097
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1056
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    if-eqz v0, :cond_0

    .line 1057
    check-cast p1, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object p0

    .line 1060
    .end local p0
    :goto_0
    return-object p0

    .line 1059
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
    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 959
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
    .line 959
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
    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 959
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
    .line 959
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1231
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;->newBuilder(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1238
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1242
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1243
    return-object p0

    .line 1236
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setCropType(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1310
    if-nez p1, :cond_0

    .line 1311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1313
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1314
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->cropType_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$CropType;

    .line 1315
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1316
    return-object p0
.end method

.method public setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions$Builder;->build()Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1219
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1223
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1224
    return-object p0

    .line 1221
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
    .line 1200
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1201
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1204
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensions_:Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$RequestedDimensions;

    .line 1205
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1209
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1210
    return-object p0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->requestedDimensionsBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1146
    if-nez p1, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1149
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1150
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1152
    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1171
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->bitField0_:I

    .line 1172
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->url_:Ljava/lang/Object;

    .line 1173
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ImageDownloadRequest$Builder;->onChanged()V

    .line 1174
    return-object p0
.end method
