.class public Lcom/google/googlex/glass/common/proto/TimezoneInternalDescriptors;
.super Ljava/lang/Object;
.source "TimezoneInternalDescriptors.java"


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

    const-string v2, "\nEjava/com/google/googlex/glass/common/clientserverproto/timezone.proto\u0012\u001agooglex_glass_common_proto\"9\n\u0012GetTimeZoneRequest\u0012\u0010\n\u0008latitude\u0018\u0001 \u0001(\u0001\u0012\u0011\n\tlongitude\u0018\u0002 \u0001(\u0001\"D\n\u0013GetTimeZoneResponse\u0012\u0011\n\ttime_zone\u0018\u0001 \u0001(\t\u0012\u001a\n\u0012reverse_successful\u0018\u0002 \u0001(\u0008B+\n%com.google.googlex.glass.common.proto0\u0001P\u0001"

    aput-object v2, v1, v3

    .line 19
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimezoneInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimezoneInternalDescriptors$1;-><init>()V

    .line 27
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v3, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
