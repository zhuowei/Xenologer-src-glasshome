.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
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
    name = "Protocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol; = null

.field public static final enum TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol; = null

.field public static final TCP_VALUE:I = 0x0

.field public static final enum UDP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol; = null

.field public static final UDP_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;",
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

    .line 14321
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14325
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->UDP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14316
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->UDP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    .line 14353
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 14373
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->values()[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

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
    .line 14387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14388
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->index:I

    .line 14389
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->value:I

    .line 14390
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 14370
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14350
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1
    .parameter "value"

    .prologue
    .line 14341
    packed-switch p0, :pswitch_data_0

    .line 14344
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14342
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->TCP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    goto :goto_0

    .line 14343
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->UDP:Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    goto :goto_0

    .line 14341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 2
    .parameter "desc"

    .prologue
    .line 14377
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14381
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1
    .parameter "name"

    .prologue
    .line 14316
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;
    .locals 1

    .prologue
    .line 14316
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 14366
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 14338
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 14362
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$MethodOptions$Protocol;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
