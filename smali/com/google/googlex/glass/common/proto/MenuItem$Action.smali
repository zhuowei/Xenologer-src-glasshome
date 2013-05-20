.class public final enum Lcom/google/googlex/glass/common/proto/MenuItem$Action;
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
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/googlex/glass/common/proto/MenuItem$Action;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final enum BROADCAST:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final BROADCAST_VALUE:I = 0x7

.field public static final enum CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final CUSTOM_VALUE:I = 0x0

.field public static final enum DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final DELETE_VALUE:I = 0x3

.field public static final enum HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final HANGOUT_VALUE:I = 0xe

.field public static final enum MUTE_MIC:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final MUTE_MIC_VALUE:I = 0xb

.field public static final enum NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final NAVIGATE_VALUE:I = 0x9

.field public static final enum PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final PLAY_VIDEO_VALUE:I = 0x11

.field public static final enum READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final READ_ALOUD_VALUE:I = 0x5

.field public static final enum READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final READ_MORE_VALUE:I = 0x10

.field public static final enum REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final enum REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final REPLY_ALL_VALUE:I = 0x6

.field public static final REPLY_VALUE:I = 0x2

.field public static final enum SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final SEARCH_VALUE:I = 0xa

.field public static final enum SEND_TO_PHONE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final SEND_TO_PHONE_VALUE:I = 0xc

.field public static final enum SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final SHARE_VALUE:I = 0x4

.field public static final enum TOGGLE_PINNED:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final TOGGLE_PINNED_VALUE:I = 0xf

.field private static final VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final enum VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final VIEW_WEB_SITE_VALUE:I = 0xd

.field public static final enum VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action; = null

.field public static final VOICE_CALL_VALUE:I = 0x8

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem$Action;",
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

    const/4 v5, 0x0

    .line 156
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 166
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "REPLY"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 174
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 182
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 190
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "READ_ALOUD"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 201
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "REPLY_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 211
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "BROADCAST"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->BROADCAST:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 222
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "VOICE_CALL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 231
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "NAVIGATE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 241
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "SEARCH"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 250
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "MUTE_MIC"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->MUTE_MIC:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 260
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "SEND_TO_PHONE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEND_TO_PHONE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 268
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "VIEW_WEB_SITE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 276
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "HANGOUT"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 284
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "TOGGLE_PINNED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->TOGGLE_PINNED:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 293
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "READ_MORE"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 301
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    const-string v1, "PLAY_VIDEO"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 146
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v5

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->BROADCAST:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->MUTE_MIC:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEND_TO_PHONE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->TOGGLE_PINNED:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->$VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 490
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$Action$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 510
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->values()[Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action;

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
    .line 524
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 525
    iput p3, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->index:I

    .line 526
    iput p4, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->value:I

    .line 527
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/google/googlex/glass/common/proto/MenuItem$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1
    .parameter "value"

    .prologue
    .line 463
    packed-switch p0, :pswitch_data_0

    .line 481
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 464
    :pswitch_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 465
    :pswitch_2
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 466
    :pswitch_3
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->DELETE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 467
    :pswitch_4
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SHARE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 468
    :pswitch_5
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_ALOUD:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 469
    :pswitch_6
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->REPLY_ALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 470
    :pswitch_7
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->BROADCAST:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 471
    :pswitch_8
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VOICE_CALL:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 472
    :pswitch_9
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->NAVIGATE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 473
    :pswitch_a
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEARCH:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 474
    :pswitch_b
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->MUTE_MIC:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 475
    :pswitch_c
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->SEND_TO_PHONE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 476
    :pswitch_d
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VIEW_WEB_SITE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 477
    :pswitch_e
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->HANGOUT:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 478
    :pswitch_f
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->TOGGLE_PINNED:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 479
    :pswitch_10
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 480
    :pswitch_11
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 2
    .parameter "desc"

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 146
    const-class v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object v0
.end method

.method public static values()[Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->$VALUES:[Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v0}, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
