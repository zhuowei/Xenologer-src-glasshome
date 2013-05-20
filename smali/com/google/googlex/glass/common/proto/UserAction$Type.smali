.class public final enum Lcom/google/googlex/glass/common/proto/UserAction$Type;
.super Ljava/lang/Enum;
.source "UserAction.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/UserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/UserAction$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final enum CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final CUSTOM_VALUE:I = 0x5

.field public static final enum DELETE:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final DELETE_VALUE:I = 0x6

.field public static final enum LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final LAUNCH_VALUE:I = 0x7

.field public static final enum NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final NEW_MESSAGE_VALUE:I = 0x1

.field public static final enum PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final PIN_VALUE:I = 0x8

.field public static final enum REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final enum REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final REPLY_ALL_VALUE:I = 0x4

.field public static final REPLY_VALUE:I = 0x3

.field public static final enum SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final SHARE_VALUE:I = 0x2

.field public static final enum UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type; = null

.field public static final UNPIN_VALUE:I = 0x9

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 131
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "NEW_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 139
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 147
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "REPLY"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 155
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "REPLY_ALL"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 163
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 171
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "DELETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->DELETE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 179
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "LAUNCH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 187
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "PIN"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 195
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const-string v1, "UNPIN"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/UserAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/UserAction$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/googlex/glass/common/proto/UserAction$Type;->DELETE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->$VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type;

    .line 294
    new-instance v0, Lcom/google/googlex/glass/common/proto/UserAction$Type$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/UserAction$Type$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 314
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->values()[Lcom/google/googlex/glass/common/proto/UserAction$Type;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type;

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
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->index:I

    .line 330
    iput p4, p0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->value:I

    .line 331
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/UserAction$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/UserAction$Type;
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    packed-switch p0, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->NEW_MESSAGE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 277
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->SHARE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 278
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 279
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 280
    :pswitch_4
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 281
    :pswitch_5
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->DELETE:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 282
    :pswitch_6
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->LAUNCH:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 283
    :pswitch_7
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 284
    :pswitch_8
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/UserAction$Type;
    .locals 2
    .parameter "desc"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/UserAction$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 122
    const-class v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/UserAction$Type;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->$VALUES:[Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/UserAction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/UserAction$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/UserAction$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
