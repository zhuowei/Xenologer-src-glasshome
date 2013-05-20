.class public final enum Lcom/google/googlex/glass/common/proto/AuthTokenType;
.super Ljava/lang/Enum;
.source "AuthTokenType.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/AuthTokenType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType; = null

.field public static final enum ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType; = null

.field public static final ANDROID_SERVICE_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/AuthTokenType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;

    const-string v1, "ANDROID_SERVICE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/googlex/glass/common/proto/AuthTokenType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 13
    new-array v0, v3, [Lcom/google/googlex/glass/common/proto/AuthTokenType;

    sget-object v1, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->$VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType;

    .line 41
    new-instance v0, Lcom/google/googlex/glass/common/proto/AuthTokenType$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AuthTokenType$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 61
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthTokenType;->values()[Lcom/google/googlex/glass/common/proto/AuthTokenType;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->index:I

    .line 77
    iput p4, p0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->value:I

    .line 78
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/google/googlex/glass/common/proto/BatchInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/google/googlex/glass/common/proto/AuthTokenType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/AuthTokenType;
    .locals 1
    .parameter "value"

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->ANDROID_SERVICE:Lcom/google/googlex/glass/common/proto/AuthTokenType;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/AuthTokenType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthTokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/AuthTokenType;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/AuthTokenType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->$VALUES:[Lcom/google/googlex/glass/common/proto/AuthTokenType;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/AuthTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/AuthTokenType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthTokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/google/googlex/glass/common/proto/AuthTokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AuthTokenType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
