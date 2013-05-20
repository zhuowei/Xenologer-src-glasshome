.class public final enum Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
.super Ljava/lang/Enum;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

.field public static final enum USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

.field public static final USER_ACTION_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12017
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    const-string v1, "USER_ACTION"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12008
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    sget-object v1, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->$VALUES:[Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12044
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 12053
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12054
    iput p4, p0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->value:I

    .line 12055
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12041
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1
    .parameter "value"

    .prologue
    .line 12033
    packed-switch p0, :pswitch_data_0

    .line 12035
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 12034
    :pswitch_0
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    goto :goto_0

    .line 12033
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1
    .parameter "name"

    .prologue
    .line 12008
    const-class v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1

    .prologue
    .line 12008
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->$VALUES:[Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v0}, [Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 12030
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->value:I

    return v0
.end method
