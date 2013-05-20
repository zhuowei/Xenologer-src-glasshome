.class public final enum Lcom/google/glass/companion/Proto$Error$ErrorType;
.super Ljava/lang/Enum;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/companion/Proto$Error$ErrorType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/companion/Proto$Error$ErrorType; = null

.field public static final enum SMS_GOOGLE_VOICE_NEEDS_UPDATE:Lcom/google/glass/companion/Proto$Error$ErrorType; = null

.field public static final SMS_GOOGLE_VOICE_NEEDS_UPDATE_VALUE:I = 0x2

.field public static final enum SMS_GOOGLE_VOICE_NOT_INSTALLED:Lcom/google/glass/companion/Proto$Error$ErrorType; = null

.field public static final SMS_GOOGLE_VOICE_NOT_INSTALLED_VALUE:I = 0x1

.field public static final enum TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

.field public static final TETHERING_ERROR_ON_GLASS_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$Error$ErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8553
    new-instance v0, Lcom/google/glass/companion/Proto$Error$ErrorType;

    const-string v1, "TETHERING_ERROR_ON_GLASS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/glass/companion/Proto$Error$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8561
    new-instance v0, Lcom/google/glass/companion/Proto$Error$ErrorType;

    const-string v1, "SMS_GOOGLE_VOICE_NOT_INSTALLED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/glass/companion/Proto$Error$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NOT_INSTALLED:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8569
    new-instance v0, Lcom/google/glass/companion/Proto$Error$ErrorType;

    const-string v1, "SMS_GOOGLE_VOICE_NEEDS_UPDATE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/glass/companion/Proto$Error$ErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NEEDS_UPDATE:Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8543
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/companion/Proto$Error$ErrorType;

    sget-object v1, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NOT_INSTALLED:Lcom/google/glass/companion/Proto$Error$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NEEDS_UPDATE:Lcom/google/glass/companion/Proto$Error$ErrorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->$VALUES:[Lcom/google/glass/companion/Proto$Error$ErrorType;

    .line 8615
    new-instance v0, Lcom/google/glass/companion/Proto$Error$ErrorType$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error$ErrorType$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 8624
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8625
    iput p4, p0, Lcom/google/glass/companion/Proto$Error$ErrorType;->value:I

    .line 8626
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/glass/companion/Proto$Error$ErrorType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8612
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1
    .parameter "value"

    .prologue
    .line 8602
    packed-switch p0, :pswitch_data_0

    .line 8606
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 8603
    :pswitch_0
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->TETHERING_ERROR_ON_GLASS:Lcom/google/glass/companion/Proto$Error$ErrorType;

    goto :goto_0

    .line 8604
    :pswitch_1
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NOT_INSTALLED:Lcom/google/glass/companion/Proto$Error$ErrorType;

    goto :goto_0

    .line 8605
    :pswitch_2
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->SMS_GOOGLE_VOICE_NEEDS_UPDATE:Lcom/google/glass/companion/Proto$Error$ErrorType;

    goto :goto_0

    .line 8602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1
    .parameter "name"

    .prologue
    .line 8543
    const-class v0, Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/companion/Proto$Error$ErrorType;
    .locals 1

    .prologue
    .line 8543
    sget-object v0, Lcom/google/glass/companion/Proto$Error$ErrorType;->$VALUES:[Lcom/google/glass/companion/Proto$Error$ErrorType;

    invoke-virtual {v0}, [Lcom/google/glass/companion/Proto$Error$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/companion/Proto$Error$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 8599
    iget v0, p0, Lcom/google/glass/companion/Proto$Error$ErrorType;->value:I

    return v0
.end method
