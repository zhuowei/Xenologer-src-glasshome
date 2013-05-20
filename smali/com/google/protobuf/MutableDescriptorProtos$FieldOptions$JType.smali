.class public final enum Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
.super Ljava/lang/Enum;
.source "MutableDescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType; = null

.field public static final enum BYTES:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType; = null

.field public static final BYTES_VALUE:I = 0x1

.field public static final enum NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

.field public static final NORMAL_VALUE:I

.field private static final VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;",
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

    .line 10658
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 10667
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    const-string v1, "BYTES"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->BYTES:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 10649
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->BYTES:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    .line 10704
    new-instance v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType$1;

    invoke-direct {v0}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 10724
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->values()[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

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
    .line 10738
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10739
    iput p3, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->index:I

    .line 10740
    iput p4, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->value:I

    .line 10741
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 10721
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10701
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    .locals 1
    .parameter "value"

    .prologue
    .line 10692
    packed-switch p0, :pswitch_data_0

    .line 10695
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10693
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->NORMAL:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    goto :goto_0

    .line 10694
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->BYTES:Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    goto :goto_0

    .line 10692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 10728
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10732
    :cond_0
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10649
    const-class v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;
    .locals 1

    .prologue
    .line 10649
    sget-object v0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->$VALUES:[Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    invoke-virtual {v0}, [Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 10717
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 10689
    iget v0, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 10713
    invoke-static {}, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/MutableDescriptorProtos$FieldOptions$JType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
