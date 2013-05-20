.class public final enum Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
.super Ljava/lang/Enum;
.source "ShareTargetResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ShareTargetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

.field public static final enum SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

.field public static final SUCCESS_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;",
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

    .line 138
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    sget-object v1, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    .line 166
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 186
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->values()[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->index:I

    .line 202
    iput p4, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->value:I

    .line 203
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->$VALUES:[Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ShareTargetResponse$ResponseCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
