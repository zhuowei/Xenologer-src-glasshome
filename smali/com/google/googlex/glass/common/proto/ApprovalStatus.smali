.class public final enum Lcom/google/googlex/glass/common/proto/ApprovalStatus;
.super Ljava/lang/Enum;
.source "ApprovalStatus.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/ApprovalStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus; = null

.field public static final enum APPROVED:Lcom/google/googlex/glass/common/proto/ApprovalStatus; = null

.field public static final APPROVED_VALUE:I = 0x1

.field public static final enum REJECTED:Lcom/google/googlex/glass/common/proto/ApprovalStatus; = null

.field public static final REJECTED_VALUE:I = 0x2

.field public static final enum UNREVIEWED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

.field public static final UNREVIEWED_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApprovalStatus;",
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    const-string v1, "UNREVIEWED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->UNREVIEWED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    .line 23
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    const-string v1, "APPROVED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->APPROVED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    .line 27
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->REJECTED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    sget-object v1, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->UNREVIEWED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->APPROVED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->REJECTED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->$VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    .line 60
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApprovalStatus$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 80
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->values()[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->index:I

    .line 96
    iput p4, p0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->value:I

    .line 97
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryOuterClassInternalDescriptors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/google/googlex/glass/common/proto/ApprovalStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/ApprovalStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->UNREVIEWED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->APPROVED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    goto :goto_0

    .line 50
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->REJECTED:Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/ApprovalStatus;
    .locals 2
    .parameter "desc"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ApprovalStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/ApprovalStatus;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->$VALUES:[Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/ApprovalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ApprovalStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApprovalStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
