.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
.super Ljava/lang/Enum;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit; = null

.field public static final enum BYTE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit; = null

.field public static final BYTE_VALUE:I = 0x1

.field public static final enum MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

.field public static final MESSAGE_VALUE:I

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;",
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

    .line 16415
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16419
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    const-string v1, "BYTE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->BYTE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16410
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->BYTE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    .line 16447
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 16467
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->values()[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

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
    .line 16481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16482
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->index:I

    .line 16483
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->value:I

    .line 16484
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 16464
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16444
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1
    .parameter "value"

    .prologue
    .line 16435
    packed-switch p0, :pswitch_data_0

    .line 16438
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16436
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->MESSAGE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 16437
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->BYTE:Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    goto :goto_0

    .line 16435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 2
    .parameter "desc"

    .prologue
    .line 16471
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 16472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16475
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1
    .parameter "name"

    .prologue
    .line 16410
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;
    .locals 1

    .prologue
    .line 16410
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 16460
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 16432
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 16456
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$StreamOptions$TokenUnit;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
