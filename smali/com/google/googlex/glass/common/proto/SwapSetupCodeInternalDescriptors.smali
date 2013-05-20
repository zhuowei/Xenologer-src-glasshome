.class public Lcom/google/googlex/glass/common/proto/SwapSetupCodeInternalDescriptors;
.super Ljava/lang/Object;
.source "SwapSetupCodeInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nLjava/com/google/googlex/glass/common/clientserverproto/swap_setup_code.proto\u0012\u001agooglex_glass_common_proto\":\n\u0014SwapSetupCodeRequest\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\t\u0012\u0014\n\u000credirect_url\u0018\u0002 \u0001(\t\"U\n\u0015SwapSetupCodeResponse\u0012\u000f\n\u0007success\u0018\u0001 \u0001(\u0008\u0012\u0014\n\u000caccess_token\u0018\u0002 \u0001(\t\u0012\u0015\n\rrefresh_token\u0018\u0003 \u0001(\tB+\n%com.google.googlex.glass.common.proto0\u0001P\u0001"

    aput-object v2, v1, v3

    .line 20
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/SwapSetupCodeInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SwapSetupCodeInternalDescriptors$1;-><init>()V

    .line 28
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
