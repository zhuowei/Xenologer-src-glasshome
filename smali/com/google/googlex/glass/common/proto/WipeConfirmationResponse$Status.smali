.class public final enum Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
.super Ljava/lang/Enum;
.source "WipeConfirmationResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status; = null

.field public static final enum ABORT:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status; = null

.field public static final ABORT_VALUE:I = 0x1

.field public static final enum PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

.field public static final PROCEED_VALUE:I

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;",
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

    .line 126
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    const-string v1, "PROCEED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 130
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->ABORT:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    sget-object v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->ABORT:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->$VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    .line 158
    new-instance v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 178
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->values()[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput p3, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->index:I

    .line 194
    iput p4, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->value:I

    .line 195
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    .locals 1
    .parameter "value"

    .prologue
    .line 146
    packed-switch p0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->PROCEED:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->ABORT:Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    .locals 2
    .parameter "desc"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    const-class v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->$VALUES:[Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/WipeConfirmationResponse$Status;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
