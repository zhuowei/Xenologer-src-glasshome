.class public final enum Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
.super Ljava/lang/Enum;
.source "C2DMRegistrationRequest.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action; = null

.field public static final enum CHECK_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action; = null

.field public static final CHECK_REGISTERED_VALUE:I = 0x2

.field public static final enum REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action; = null

.field public static final REGISTER_VALUE:I = 0x0

.field public static final enum UNREGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action; = null

.field public static final UNREGISTER_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 172
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    const-string v1, "UNREGISTER"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->UNREGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 180
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    const-string v1, "CHECK_REGISTERED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->CHECK_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->UNREGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->CHECK_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->$VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    .line 225
    new-instance v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 245
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->values()[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

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
    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 260
    iput p3, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->index:I

    .line 261
    iput p4, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->value:I

    .line 262
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1
    .parameter "value"

    .prologue
    .line 212
    packed-switch p0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->REGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    goto :goto_0

    .line 214
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->UNREGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    goto :goto_0

    .line 215
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->CHECK_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 2
    .parameter "desc"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 155
    const-class v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->$VALUES:[Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
