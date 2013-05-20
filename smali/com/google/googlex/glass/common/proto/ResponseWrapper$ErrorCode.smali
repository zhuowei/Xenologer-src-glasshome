.class public final enum Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
.super Ljava/lang/Enum;
.source "ResponseWrapper.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final enum INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final INTERNAL_ERROR_VALUE:I = 0x4

.field public static final enum INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final INVALID_PROTO_VALUE:I = 0x3

.field public static final enum NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final NETWORK_ERROR_VALUE:I = 0x5

.field public static final enum NOT_AUTHORIZED:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final NOT_AUTHORIZED_VALUE:I = 0x2

.field public static final enum UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode; = null

.field public static final UNKNOWN_REQUEST_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 133
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    const-string v1, "UNKNOWN_REQUEST"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 143
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NOT_AUTHORIZED:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 152
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    const-string v1, "INVALID_PROTO"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 161
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 170
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NOT_AUTHORIZED:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    .line 238
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 258
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->values()[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

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
    .line 272
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 273
    iput p3, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->index:I

    .line 274
    iput p4, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->value:I

    .line 275
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 255
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    packed-switch p0, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->UNKNOWN_REQUEST:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    goto :goto_0

    .line 225
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NOT_AUTHORIZED:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    goto :goto_0

    .line 226
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INVALID_PROTO:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    goto :goto_0

    .line 227
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->INTERNAL_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->NETWORK_ERROR:Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 124
    const-class v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 251
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
