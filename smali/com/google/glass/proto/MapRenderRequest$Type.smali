.class public final enum Lcom/google/glass/proto/MapRenderRequest$Type;
.super Ljava/lang/Enum;
.source "MapRenderRequest.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/proto/MapRenderRequest$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type; = null

.field public static final enum CANCEL:Lcom/google/glass/proto/MapRenderRequest$Type; = null

.field public static final CANCEL_VALUE:I = 0x2

.field public static final enum RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type; = null

.field public static final RENDER_MAP_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/proto/MapRenderRequest$Type;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 195
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Type;

    const-string v1, "RENDER_MAP"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/glass/proto/MapRenderRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 199
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Type;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/glass/proto/MapRenderRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->CANCEL:Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 190
    new-array v0, v4, [Lcom/google/glass/proto/MapRenderRequest$Type;

    sget-object v1, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/proto/MapRenderRequest$Type;->CANCEL:Lcom/google/glass/proto/MapRenderRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->$VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type;

    .line 227
    new-instance v0, Lcom/google/glass/proto/MapRenderRequest$Type$1;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 247
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Type;->values()[Lcom/google/glass/proto/MapRenderRequest$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type;

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
    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput p3, p0, Lcom/google/glass/proto/MapRenderRequest$Type;->index:I

    .line 263
    iput p4, p0, Lcom/google/glass/proto/MapRenderRequest$Type;->value:I

    .line 264
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/glass/proto/MapRenderRequest$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 1
    .parameter "value"

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->RENDER_MAP:Lcom/google/glass/proto/MapRenderRequest$Type;

    goto :goto_0

    .line 217
    :pswitch_1
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->CANCEL:Lcom/google/glass/proto/MapRenderRequest$Type;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 2
    .parameter "desc"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 190
    const-class v0, Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/proto/MapRenderRequest$Type;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/glass/proto/MapRenderRequest$Type;->$VALUES:[Lcom/google/glass/proto/MapRenderRequest$Type;

    invoke-virtual {v0}, [Lcom/google/glass/proto/MapRenderRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/MapRenderRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/google/glass/proto/MapRenderRequest$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/google/glass/proto/MapRenderRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/proto/MapRenderRequest$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
