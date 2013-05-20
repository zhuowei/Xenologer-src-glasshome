.class public final enum Lcom/google/glass/proto/Marker$MarkerType;
.super Ljava/lang/Enum;
.source "Marker.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/Marker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarkerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/proto/Marker$MarkerType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/proto/Marker$MarkerType; = null

.field public static final enum TYPE_MY_LOCATION:Lcom/google/glass/proto/Marker$MarkerType; = null

.field public static final TYPE_MY_LOCATION_VALUE:I = 0x1

.field public static final enum TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

.field public static final TYPE_PLACEMARK_VALUE:I

.field private static final VALUES:[Lcom/google/glass/proto/Marker$MarkerType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/proto/Marker$MarkerType;",
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

    .line 137
    new-instance v0, Lcom/google/glass/proto/Marker$MarkerType;

    const-string v1, "TYPE_PLACEMARK"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/glass/proto/Marker$MarkerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    .line 145
    new-instance v0, Lcom/google/glass/proto/Marker$MarkerType;

    const-string v1, "TYPE_MY_LOCATION"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/glass/proto/Marker$MarkerType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_MY_LOCATION:Lcom/google/glass/proto/Marker$MarkerType;

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/proto/Marker$MarkerType;

    sget-object v1, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_MY_LOCATION:Lcom/google/glass/proto/Marker$MarkerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/proto/Marker$MarkerType;->$VALUES:[Lcom/google/glass/proto/Marker$MarkerType;

    .line 181
    new-instance v0, Lcom/google/glass/proto/Marker$MarkerType$1;

    invoke-direct {v0}, Lcom/google/glass/proto/Marker$MarkerType$1;-><init>()V

    sput-object v0, Lcom/google/glass/proto/Marker$MarkerType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 201
    invoke-static {}, Lcom/google/glass/proto/Marker$MarkerType;->values()[Lcom/google/glass/proto/Marker$MarkerType;

    move-result-object v0

    sput-object v0, Lcom/google/glass/proto/Marker$MarkerType;->VALUES:[Lcom/google/glass/proto/Marker$MarkerType;

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
    .line 215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    iput p3, p0, Lcom/google/glass/proto/Marker$MarkerType;->index:I

    .line 217
    iput p4, p0, Lcom/google/glass/proto/Marker$MarkerType;->value:I

    .line 218
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lcom/google/glass/proto/Marker;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/glass/proto/Marker$MarkerType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/glass/proto/Marker$MarkerType;
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_PLACEMARK:Lcom/google/glass/proto/Marker$MarkerType;

    goto :goto_0

    .line 171
    :pswitch_1
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->TYPE_MY_LOCATION:Lcom/google/glass/proto/Marker$MarkerType;

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/glass/proto/Marker$MarkerType;
    .locals 2
    .parameter "desc"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/glass/proto/Marker$MarkerType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->VALUES:[Lcom/google/glass/proto/Marker$MarkerType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/proto/Marker$MarkerType;
    .locals 1
    .parameter "name"

    .prologue
    .line 128
    const-class v0, Lcom/google/glass/proto/Marker$MarkerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/Marker$MarkerType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/proto/Marker$MarkerType;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/glass/proto/Marker$MarkerType;->$VALUES:[Lcom/google/glass/proto/Marker$MarkerType;

    invoke-virtual {v0}, [Lcom/google/glass/proto/Marker$MarkerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/proto/Marker$MarkerType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/proto/Marker$MarkerType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/glass/proto/Marker$MarkerType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/google/glass/proto/Marker$MarkerType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/proto/Marker$MarkerType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
