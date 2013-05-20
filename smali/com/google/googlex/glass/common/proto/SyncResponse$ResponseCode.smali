.class public final enum Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
.super Ljava/lang/Enum;
.source "SyncResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/SyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

.field public static final enum SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

.field public static final SUCCESS_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 185
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    sget-object v1, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    .line 213
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 233
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->values()[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput p3, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->index:I

    .line 249
    iput p4, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->value:I

    .line 250
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 202
    packed-switch p0, :pswitch_data_0

    .line 204
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 203
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 185
    const-class v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncResponse$ResponseCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
