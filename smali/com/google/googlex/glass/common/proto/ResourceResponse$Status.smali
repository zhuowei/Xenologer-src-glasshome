.class public final enum Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
.super Ljava/lang/Enum;
.source "ResourceResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status; = null

.field public static final enum BAD_REQUEST:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status; = null

.field public static final BAD_REQUEST_VALUE:I = 0x1

.field public static final enum NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status; = null

.field public static final NOT_FOUND_VALUE:I = 0x2

.field public static final enum SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

.field public static final SUCCESS_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;",
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

    .line 134
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 138
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->BAD_REQUEST:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 142
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->BAD_REQUEST:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    .line 175
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 195
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->values()[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

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
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->index:I

    .line 211
    iput p4, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->value:I

    .line 212
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->SUCCESS:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    goto :goto_0

    .line 164
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->BAD_REQUEST:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    goto :goto_0

    .line 165
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->NOT_FOUND:Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    .locals 2
    .parameter "desc"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    const-class v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->$VALUES:[Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceResponse$Status;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
