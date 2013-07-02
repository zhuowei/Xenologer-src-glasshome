.class public final enum Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
.super Ljava/lang/Enum;
.source "Entity.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType; = null

.field public static final enum POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType; = null

.field public static final POST_AN_UPDATE_VALUE:I = 0x1

.field public static final enum TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field public static final TAKE_A_NOTE_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
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

    .line 1062
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    const-string v1, "TAKE_A_NOTE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1070
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    const-string v1, "POST_AN_UPDATE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1053
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->$VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1106
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1126
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->values()[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

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
    .line 1140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1141
    iput p3, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->index:I

    .line 1142
    iput p4, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->value:I

    .line 1143
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 1123
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1103
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1
    .parameter "value"

    .prologue
    .line 1094
    packed-switch p0, :pswitch_data_0

    .line 1097
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1095
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    goto :goto_0

    .line 1096
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->POST_AN_UPDATE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    goto :goto_0

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1
    .parameter "name"

    .prologue
    .line 1053
    const-class v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1

    .prologue
    .line 1053
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->$VALUES:[Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 1119
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 1115
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
