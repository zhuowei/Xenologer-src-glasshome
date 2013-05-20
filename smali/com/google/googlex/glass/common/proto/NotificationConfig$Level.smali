.class public final enum Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
.super Ljava/lang/Enum;
.source "NotificationConfig.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/NotificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level; = null

.field public static final enum DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level; = null

.field public static final DEFAULT_VALUE:I = 0xa

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;",
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
    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    const-string v1, "DEFAULT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    sget-object v1, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->$VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    .line 161
    new-instance v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 181
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->values()[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

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
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->index:I

    .line 197
    iput p4, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->value:I

    .line 198
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->DEFAULT:Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    .locals 2
    .parameter "desc"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 125
    const-class v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->$VALUES:[Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/NotificationConfig$Level;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
