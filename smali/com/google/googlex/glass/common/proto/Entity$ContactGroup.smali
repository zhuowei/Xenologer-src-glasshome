.class public final enum Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
.super Ljava/lang/Enum;
.source "Entity.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContactGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

.field public static final enum MY_CONTACTS:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

.field public static final MY_CONTACTS_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    const-string v1, "MY_CONTACTS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->MY_CONTACTS:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    sget-object v1, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->MY_CONTACTS:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->$VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    .line 415
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 435
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->values()[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

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
    .line 449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 450
    iput p3, p0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->index:I

    .line 451
    iput p4, p0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->value:I

    .line 452
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1
    .parameter "value"

    .prologue
    .line 404
    packed-switch p0, :pswitch_data_0

    .line 406
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->MY_CONTACTS:Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 2
    .parameter "desc"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1
    .parameter "name"

    .prologue
    .line 377
    const-class v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->$VALUES:[Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
