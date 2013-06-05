.class public final Lcom/google/googlex/glass/common/proto/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field static internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static internal_static_googlex_glass_common_proto_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    sget-object v0, Lcom/google/googlex/glass/common/proto/SubscriptionsInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscriptions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 32
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "ModifiedTime"

    aput-object v3, v2, v6

    const-string v3, "Subscriber"

    aput-object v3, v2, v7

    const-string v3, "Collection"

    aput-object v3, v2, v8

    const-string v3, "Operation"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CallbackUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "VerifyToken"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UserToken"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Notification"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 36
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscriptions;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 38
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Collection"

    aput-object v3, v2, v5

    const-string v3, "ItemId"

    aput-object v3, v2, v6

    const-string v3, "Operation"

    aput-object v3, v2, v7

    const-string v3, "MenuAction"

    aput-object v3, v2, v8

    const-string v3, "UserAction"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "VerifyToken"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "UserToken"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "CallbackUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UserId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->internal_static_googlex_glass_common_proto_Notification_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 42
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Timeline;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscriptions;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 10
    return-void
.end method
