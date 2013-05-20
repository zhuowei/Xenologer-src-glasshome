.class public final enum Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
.super Ljava/lang/Enum;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/companion/Proto$ApiRequest$RequestType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/companion/Proto$ApiRequest$RequestType; = null

.field public static final enum DELETE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType; = null

.field public static final DELETE_TIMELINE_ITEM_VALUE:I = 0x1

.field public static final enum INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

.field public static final INSERT_OR_UPDATE_TIMELINE_ITEM_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$ApiRequest$RequestType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10874
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    const-string v1, "INSERT_OR_UPDATE_TIMELINE_ITEM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 10882
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    const-string v1, "DELETE_TIMELINE_ITEM"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->DELETE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 10865
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    sget-object v1, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->DELETE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->$VALUES:[Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 10918
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest$RequestType$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 10927
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10928
    iput p4, p0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->value:I

    .line 10929
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$ApiRequest$RequestType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10915
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 1
    .parameter "value"

    .prologue
    .line 10906
    packed-switch p0, :pswitch_data_0

    .line 10909
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10907
    :pswitch_0
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    goto :goto_0

    .line 10908
    :pswitch_1
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->DELETE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    goto :goto_0

    .line 10906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10865
    const-class v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 10865
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->$VALUES:[Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    invoke-virtual {v0}, [Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 10903
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->value:I

    return v0
.end method
