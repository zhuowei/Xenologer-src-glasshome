.class public Lcom/google/googlex/glass/common/proto/LocationRequestInternalDescriptors;
.super Ljava/lang/Object;
.source "LocationRequestInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nMjava/com/google/googlex/glass/common/clientserverproto/location_request.proto\u0012\u001agooglex_glass_common_proto\u001aEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"b\n\u0015LocationUpdateRequest\u00126\n\u0008location\u0018\u0001 \u0001(\u000b2$.googlex_glass_common_proto.Location\u0012\u0011\n\tdevice_id\u0018\u0002 \u0001(\t\"\u008d\u0001\n\u0016LocationUpdateResponse\u0012V\n\rresponse_code\u0018\u0001 \u0002(\u000e2?.googlex_glass_common_proto.LocationUpdateResponse.ResponseCode\"\u001b\n\u000cRes"

    aput-object v2, v1, v6

    const-string v2, "ponseCode\u0012\u000b\n\u0007SUCCESS\u0010\u0000B)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v2, v1, v5

    .line 24
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/LocationRequestInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LocationRequestInternalDescriptors$1;-><init>()V

    .line 32
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/LocationRequestInternalDescriptors;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.google.googlex.glass.common.proto.TimelineInternalDescriptors"

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "java/com/google/googlex/glass/common/clientserverproto/timeline.proto"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

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
