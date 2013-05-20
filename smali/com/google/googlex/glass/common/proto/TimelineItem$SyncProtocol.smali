.class public final enum Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
.super Ljava/lang/Enum;
.source "TimelineItem.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol; = null

.field public static final enum ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol; = null

.field public static final ALWAYS_VALUE:I = 0x0

.field public static final enum NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol; = null

.field public static final NEVER_VALUE:I = 0x2

.field public static final enum OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol; = null

.field public static final OPPORTUNISTIC_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;",
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

    .line 617
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 626
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const-string v1, "OPPORTUNISTIC"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 634
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 608
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->$VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    .line 680
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 700
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->values()[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

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
    .line 714
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 715
    iput p3, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->index:I

    .line 716
    iput p4, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->value:I

    .line 717
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 697
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1
    .parameter "value"

    .prologue
    .line 667
    packed-switch p0, :pswitch_data_0

    .line 671
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 668
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->ALWAYS:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto :goto_0

    .line 669
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->OPPORTUNISTIC:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto :goto_0

    .line 670
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->NEVER:Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 2
    .parameter "desc"

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1
    .parameter "name"

    .prologue
    .line 608
    const-class v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->$VALUES:[Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 693
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 689
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineItem$SyncProtocol;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
