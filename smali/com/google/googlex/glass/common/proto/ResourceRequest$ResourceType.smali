.class public final enum Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
.super Ljava/lang/Enum;
.source "ResourceRequest.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final enum GLASSWARE_ICON_LARGE:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final GLASSWARE_ICON_LARGE_VALUE:I = 0x5

.field public static final enum GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final GLASSWARE_ICON_MEDIUM_VALUE:I = 0x3

.field public static final enum GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final GLASSWARE_ICON_SMALL_VALUE:I = 0x2

.field public static final enum GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final GLASSWARE_MESSAGES_VALUE:I = 0x4

.field public static final enum STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType; = null

.field public static final STYLESHEET_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;",
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

    .line 146
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    const-string v1, "STYLESHEET"

    invoke-direct {v0, v1, v7, v7, v3}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 154
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    const-string v1, "GLASSWARE_ICON_SMALL"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 162
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    const-string v1, "GLASSWARE_ICON_MEDIUM"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 170
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    const-string v1, "GLASSWARE_ICON_LARGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_LARGE:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 179
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    const-string v1, "GLASSWARE_MESSAGES"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_LARGE:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    .line 243
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 263
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->values()[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

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
    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 278
    iput p3, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->index:I

    .line 279
    iput p4, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->value:I

    .line 280
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1
    .parameter "value"

    .prologue
    .line 228
    packed-switch p0, :pswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->STYLESHEET:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_SMALL:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 231
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_MEDIUM:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 232
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_ICON_LARGE:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 233
    :pswitch_4
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->GLASSWARE_MESSAGES:Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 137
    const-class v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceRequest$ResourceType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
