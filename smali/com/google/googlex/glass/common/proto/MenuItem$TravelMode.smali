.class public final enum Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
.super Ljava/lang/Enum;
.source "MenuItem.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TravelMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final enum BICYCLING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final BICYCLING_VALUE:I = 0x3

.field public static final enum DRIVING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final DRIVING_VALUE:I = 0x1

.field public static final enum MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final MOST_RECENTLY_USED_VALUE:I = 0x0

.field public static final enum TRANSIT:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final TRANSIT_VALUE:I = 0x4

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final enum WALKING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode; = null

.field public static final WALKING_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 656
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "MOST_RECENTLY_USED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 660
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "DRIVING"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->DRIVING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 664
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "WALKING"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->WALKING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 668
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "BICYCLING"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->BICYCLING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 672
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    const-string v1, "TRANSIT"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->TRANSIT:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 647
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->DRIVING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->WALKING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->BICYCLING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->TRANSIT:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->$VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 719
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 739
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->values()[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

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
    .line 753
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 754
    iput p3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->index:I

    .line 755
    iput p4, p0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->value:I

    .line 756
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 736
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 1
    .parameter "value"

    .prologue
    .line 704
    packed-switch p0, :pswitch_data_0

    .line 710
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 705
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_0

    .line 706
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->DRIVING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_0

    .line 707
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->WALKING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_0

    .line 708
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->BICYCLING:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_0

    .line 709
    :pswitch_4
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->TRANSIT:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 2
    .parameter "desc"

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 647
    const-class v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->$VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 728
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
