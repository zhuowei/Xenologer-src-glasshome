.class public Lcom/google/googlex/glass/common/proto/ImageDownloadInternalDescriptors;
.super Ljava/lang/Object;
.source "ImageDownloadInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nKjava/com/google/googlex/glass/common/clientserverproto/image_download.proto\u0012\u001agooglex_glass_common_proto\"\u00c2\u0002\n\u0014ImageDownloadRequest\u0012\u000b\n\u0003url\u0018\u0001 \u0001(\t\u0012b\n\u0014requested_dimensions\u0018\u0002 \u0001(\u000b2D.googlex_glass_common_proto.ImageDownloadRequest.RequestedDimensions\u0012L\n\tcrop_type\u0018\u0003 \u0001(\u000e29.googlex_glass_common_proto.ImageDownloadRequest.CropType\u001aB\n\u0013RequestedDimensions\u0012\u0014\n\u000cwidth_pixels\u0018\u0001 \u0001(\u0005\u0012\u0015\n\rheight_pixels\u0018\u0002 \u0001(\u0005\"\'\n\u0008CropTyp"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "e\u0012\u000b\n\u0007NO_CROP\u0010\u0000\u0012\u000e\n\nSMART_CROP\u0010\u0001\"\u0092\u0001\n\u0015ImageDownloadResponse\u0012\r\n\u0005image\u0018\u0001 \u0001(\u000c\u0012H\n\u0006status\u0018\u0002 \u0001(\u000e28.googlex_glass_common_proto.ImageDownloadResponse.Status\" \n\u0006Status\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\t\n\u0005ERROR\u0010\u0001B+\n%com.google.googlex.glass.common.proto0\u0001P\u0001"

    aput-object v3, v1, v2

    .line 28
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadInternalDescriptors$1;-><init>()V

    .line 36
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
