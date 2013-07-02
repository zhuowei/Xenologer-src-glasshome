.class public Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors;
.super Ljava/lang/Object;
.source "GlasswareRegistryOuterClassInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nOjava/com/google/googlex/glass/common/clientserverproto/glassware_registry.proto\u0012\u001agooglex_glass_common_proto\"\u00a4\u0004\n\u0016GlasswareRegistryEntry\u0012\u0012\n\nproject_id\u0018\u0001 \u0001(\u0004\u0012\u0019\n\u0011icon_glass_30_url\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011icon_glass_50_url\u0018\u0003 \u0001(\t\u0012\u001a\n\u0012icon_glass_160_url\u0018\u0004 \u0001(\t\u0012\u0017\n\u000ficon_web_40_url\u0018\u000c \u0001(\t\u0012\u0017\n\u000ficon_web_85_url\u0018\r \u0001(\t\u0012?\n\u0008messages\u0018\u0005 \u0003(\u000b2-.googlex_glass_common_proto.GlasswareMessages\u0012\u0010\n\u0008auth_url\u0018\u0006 \u0001(\t\u0012\u0014\n\u000csettings_url\u0018\u0007 \u0001(\t\u0012\u0015\n\rmor"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "e_info_url\u0018\u0008 \u0001(\t\u0012\u001d\n\u0012internal_glassware\u0018\t \u0001(\u0005:\u00018\u0012\u0017\n\u000fname_text_color\u0018\u000b \u0001(\t\u0012Y\n\nvisibility\u0018\u000e \u0001(\u000e2=.googlex_glass_common_proto.GlasswareRegistryEntry.Visibility:\u0006PUBLIC\"_\n\nVisibility\u0012\n\n\u0006PUBLIC\u0010\u0000\u0012\u0010\n\u000cCONFIDENTIAL\u0010\u0001\u0012\r\n\tTEAM_ONLY\u0010\u0004\u0012\u0018\n\u0014HIDDEN_WHEN_DISABLED\u0010\u0002\u0012\n\n\u0006HIDDEN\u0010\u0003\"\u00ae\u0001\n\u0011GlasswareMessages\u0012\u0015\n\u0006locale\u0018\u0001 \u0001(\t:\u0005en_US\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0003 \u0001(\t\u0012\u0019\n\u0011short_description\u0018\u0004 \u0001(\t\u0012\u0017\n\u000fmore_info_title\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bperm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "issions\u0018\u0006 \u0001(\t\u0012\u0016\n\u000espeakable_name\u0018\u0007 \u0001(\t\"a\n\u0011GlasswareRegistry\u0012L\n\u0010registry_entries\u0018\u0001 \u0003(\u000b22.googlex_glass_common_proto.GlasswareRegistryEntry*<\n\u000eApprovalStatus\u0012\u000e\n\nUNREVIEWED\u0010\u0000\u0012\u000c\n\u0008APPROVED\u0010\u0001\u0012\u000c\n\u0008REJECTED\u0010\u0002B)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 39
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors$1;-><init>()V

    .line 47
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors;

    new-array v3, v4, [Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
