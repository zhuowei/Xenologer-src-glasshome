.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
.super Ljava/lang/Enum;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptimizeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode; = null

.field public static final enum CODE_SIZE:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode; = null

.field public static final CODE_SIZE_VALUE:I = 0x2

.field public static final enum LITE_RUNTIME:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode; = null

.field public static final LITE_RUNTIME_VALUE:I = 0x3

.field public static final enum SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode; = null

.field public static final SPEED_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7188
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    const-string v1, "SPEED"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7196
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    const-string v1, "CODE_SIZE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7204
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    const-string v1, "LITE_RUNTIME"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7179
    new-array v0, v5, [Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    .line 7249
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 7269
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->values()[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

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
    .line 7283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7284
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->index:I

    .line 7285
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->value:I

    .line 7286
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 7266
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7246
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 1
    .parameter "value"

    .prologue
    .line 7236
    packed-switch p0, :pswitch_data_0

    .line 7240
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7237
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    goto :goto_0

    .line 7238
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->CODE_SIZE:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    goto :goto_0

    .line 7239
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->LITE_RUNTIME:Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    goto :goto_0

    .line 7236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 7273
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7274
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7277
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 7179
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 7179
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 7262
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 7233
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 7258
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FileOptions$OptimizeMode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
