.class public Lcom/google/googlex/glass/common/proto/SubscriptionsInternalDescriptors;
.super Ljava/lang/Object;
.source "SubscriptionsInternalDescriptors.java"


# static fields
.field public static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\nJjava/com/google/googlex/glass/common/clientserverproto/subscriptions.proto\u0012\u001agooglex_glass_common_proto\u001aEjava/com/google/googlex/glass/common/clientserverproto/timeline.proto\"\u00e3\u0002\n\u000cSubscription\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0015\n\rmodified_time\u0018\u0002 \u0001(\u0004\u0012\u0012\n\nsubscriber\u0018\u0003 \u0001(\t\u0012\u0012\n\ncollection\u0018\u0004 \u0001(\t\u0012E\n\toperation\u0018\u0005 \u0003(\u000e22.googlex_glass_common_proto.Subscription.Operation\u0012\u0014\n\u000ccallback_url\u0018\u0006 \u0001(\t\u0012\u0014\n\u000cverify_token\u0018\u0007 \u0001(\t\u0012\u0012\n\nuser_token\u0018\u0008 \u0001"

    aput-object v2, v1, v6

    const-string v2, "(\t\u0012?\n\u000cnotification\u0018\u00e7\u0007 \u0001(\u000b2(.googlex_glass_common_proto.Notification\"@\n\tOperation\u0012\n\n\u0006INSERT\u0010\u0000\u0012\n\n\u0006UPDATE\u0010\u0001\u0012\n\n\u0006DELETE\u0010\u0002\u0012\u000f\n\u000bMENU_ACTION\u0010\u0003\"\u00ea\u0002\n\u000cNotification\u0012\u0012\n\ncollection\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007item_id\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006source\u0018\u000b \u0001(\t\u0012E\n\toperation\u0018\u0003 \u0001(\u000e22.googlex_glass_common_proto.Subscription.Operation\u0012=\n\u000bmenu_action\u0018\u0004 \u0003(\u000b2$.googlex_glass_common_proto.MenuItemB\u0002\u0018\u0001\u0012;\n\u000buser_action\u0018\n \u0003(\u000b2&.googlex_glass_common_proto.UserAction\u0012\u0014"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "\n\u000cverify_token\u0018\u0005 \u0001(\t\u0012\u0012\n\nuser_token\u0018\u0006 \u0001(\t\u0012\u0014\n\u000ccallback_url\u0018\u0007 \u0001(\t\u0012\u000f\n\u0007user_id\u0018\u0008 \u0001(\u0004\u0012\u0011\n\ttimestamp\u0018\t \u0001(\u0004B)\n%com.google.googlex.glass.common.protoP\u0001"

    aput-object v3, v1, v2

    .line 36
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/google/googlex/glass/common/proto/SubscriptionsInternalDescriptors$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SubscriptionsInternalDescriptors$1;-><init>()V

    .line 44
    .local v0, assigner:Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    const-class v2, Lcom/google/googlex/glass/common/proto/SubscriptionsInternalDescriptors;

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "com.google.googlex.glass.common.proto.TimelineInternalDescriptors"

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "java/com/google/googlex/glass/common/clientserverproto/timeline.proto"

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
