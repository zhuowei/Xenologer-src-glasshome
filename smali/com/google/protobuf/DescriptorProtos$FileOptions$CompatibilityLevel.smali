.class public final enum Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibilityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel; = null

.field public static final enum DEPRECATED_PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel; = null

.field public static final DEPRECATED_PROTO1_COMPATIBLE_VALUE:I = 0x32

.field public static final enum NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel; = null

.field public static final NO_COMPATIBILITY_VALUE:I = 0x0

.field public static final enum PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel; = null

.field public static final PROTO1_COMPATIBLE_VALUE:I = 0x64

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;",
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15783
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    const-string v1, "NO_COMPATIBILITY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 15793
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    const-string v1, "PROTO1_COMPATIBLE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 15804
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    const-string v1, "DEPRECATED_PROTO1_COMPATIBLE"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->DEPRECATED_PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 15774
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->DEPRECATED_PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    .line 15854
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 15874
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->values()[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

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
    .line 15888
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15889
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->index:I

    .line 15890
    iput p4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->value:I

    .line 15891
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 15871
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15851
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1
    .parameter "value"

    .prologue
    .line 15841
    sparse-switch p0, :sswitch_data_0

    .line 15845
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 15842
    :sswitch_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->NO_COMPATIBILITY:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    goto :goto_0

    .line 15843
    :sswitch_1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    goto :goto_0

    .line 15844
    :sswitch_2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->DEPRECATED_PROTO1_COMPATIBLE:Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    goto :goto_0

    .line 15841
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x32 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 2
    .parameter "desc"

    .prologue
    .line 15878
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15882
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 15774
    const-class v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;
    .locals 1

    .prologue
    .line 15774
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 15867
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 15838
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 15863
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions$CompatibilityLevel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
