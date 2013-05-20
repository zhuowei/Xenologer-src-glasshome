.class public final enum Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format; = null

.field public static final enum UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format; = null

.field public static final UNCOMPRESSED_VALUE:I = 0x0

.field private static final VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format; = null

.field public static final enum ZIPPY_COMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format; = null

.field public static final ZIPPY_COMPRESSED_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;",
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

    .line 29804
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    const-string v1, "UNCOMPRESSED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 29808
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    const-string v1, "ZIPPY_COMPRESSED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->ZIPPY_COMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 29799
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->ZIPPY_COMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    .line 29836
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 29856
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->values()[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

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
    .line 29870
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29871
    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->index:I

    .line 29872
    iput p4, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->value:I

    .line 29873
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 29853
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

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
            "Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29833
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1
    .parameter "value"

    .prologue
    .line 29824
    packed-switch p0, :pswitch_data_0

    .line 29827
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29825
    :pswitch_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->UNCOMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto :goto_0

    .line 29826
    :pswitch_1
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->ZIPPY_COMPRESSED:Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    goto :goto_0

    .line 29824
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 2
    .parameter "desc"

    .prologue
    .line 29860
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29864
    :cond_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1
    .parameter "name"

    .prologue
    .line 29799
    const-class v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;
    .locals 1

    .prologue
    .line 29799
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 29849
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 29821
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 29845
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$MethodOptions$Format;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
