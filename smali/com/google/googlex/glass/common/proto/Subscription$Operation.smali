.class public final enum Lcom/google/googlex/glass/common/proto/Subscription$Operation;
.super Ljava/lang/Enum;
.source "Subscription.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation; = null

.field public static final enum DELETE:Lcom/google/googlex/glass/common/proto/Subscription$Operation; = null

.field public static final DELETE_VALUE:I = 0x2

.field public static final enum INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation; = null

.field public static final INSERT_VALUE:I = 0x0

.field public static final enum MENU_ACTION:Lcom/google/googlex/glass/common/proto/Subscription$Operation; = null

.field public static final MENU_ACTION_VALUE:I = 0x3

.field public static final enum UPDATE:Lcom/google/googlex/glass/common/proto/Subscription$Operation; = null

.field public static final UPDATE_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
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

    .line 204
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 208
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->UPDATE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 212
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->DELETE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 216
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    const-string v1, "MENU_ACTION"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->MENU_ACTION:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->UPDATE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->DELETE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->MENU_ACTION:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->$VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    .line 254
    new-instance v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Subscription$Operation$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 274
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->values()[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

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
    .line 288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 289
    iput p3, p0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->index:I

    .line 290
    iput p4, p0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->value:I

    .line 291
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/Subscription$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    packed-switch p0, :pswitch_data_0

    .line 245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->INSERT:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 242
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->UPDATE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->DELETE:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 244
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->MENU_ACTION:Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 2
    .parameter "desc"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1
    .parameter "name"

    .prologue
    .line 199
    const-class v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/Subscription$Operation;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->$VALUES:[Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/Subscription$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/Subscription$Operation;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 263
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/Subscription$Operation;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
