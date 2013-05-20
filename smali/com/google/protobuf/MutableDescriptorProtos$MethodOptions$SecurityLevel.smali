.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
.super Ljava/lang/Enum;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel; = null

.field public static final enum INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel; = null

.field public static final INTEGRITY_VALUE:I = 0x1

.field public static final enum NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel; = null

.field public static final NONE_VALUE:I = 0x0

.field public static final enum PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel; = null

.field public static final PRIVACY_AND_INTEGRITY_VALUE:I = 0x2

.field public static final enum STRONG_PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel; = null

.field public static final STRONG_PRIVACY_AND_INTEGRITY_VALUE:I = 0x3

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;",
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

    .line 14403
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14407
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    const-string v1, "INTEGRITY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14411
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    const-string v1, "PRIVACY_AND_INTEGRITY"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14415
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    const-string v1, "STRONG_PRIVACY_AND_INTEGRITY"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->STRONG_PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14398
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->STRONG_PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    .line 14453
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 14473
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->values()[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

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
    .line 14487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14488
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->index:I

    .line 14489
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->value:I

    .line 14490
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 14470
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14450
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1
    .parameter "value"

    .prologue
    .line 14439
    packed-switch p0, :pswitch_data_0

    .line 14444
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14440
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->NONE:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 14441
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 14442
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 14443
    :pswitch_3
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->STRONG_PRIVACY_AND_INTEGRITY:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    goto :goto_0

    .line 14439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    .locals 2
    .parameter "desc"

    .prologue
    .line 14477
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14481
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 14398
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;
    .locals 1

    .prologue
    .line 14398
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 14466
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 14436
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 14462
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$SecurityLevel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
