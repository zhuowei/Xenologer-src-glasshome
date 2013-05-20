.class public final enum Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
.super Ljava/lang/Enum;
.source "C2DMRegistrationResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode; = null

.field public static final enum ERROR_MISSING_REGISTRATION_ID:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode; = null

.field public static final ERROR_MISSING_REGISTRATION_ID_VALUE:I = 0x1

.field public static final enum ERROR_NOT_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode; = null

.field public static final ERROR_NOT_REGISTERED_VALUE:I = 0x3

.field public static final enum ERROR_UNSUPPORTED_ACTION:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode; = null

.field public static final ERROR_UNSUPPORTED_ACTION_VALUE:I = 0x2

.field public static final enum SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

.field public static final SUCCESS_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 128
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    const-string v1, "ERROR_MISSING_REGISTRATION_ID"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_MISSING_REGISTRATION_ID:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 136
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    const-string v1, "ERROR_UNSUPPORTED_ACTION"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_UNSUPPORTED_ACTION:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 145
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    const-string v1, "ERROR_NOT_REGISTERED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_NOT_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_MISSING_REGISTRATION_ID:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_UNSUPPORTED_ACTION:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_NOT_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    .line 196
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 216
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->values()[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

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
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput p3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->index:I

    .line 232
    iput p4, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->value:I

    .line 233
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_MISSING_REGISTRATION_ID:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    goto :goto_0

    .line 185
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_UNSUPPORTED_ACTION:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    goto :goto_0

    .line 186
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->ERROR_NOT_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
