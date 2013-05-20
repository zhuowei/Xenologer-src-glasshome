.class final enum Lcom/google/glass/sound/SoundManager$ConnectionState;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/sound/SoundManager$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/sound/SoundManager$ConnectionState;

.field public static final enum CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

.field public static final enum CONNECTING:Lcom/google/glass/sound/SoundManager$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/google/glass/sound/SoundManager$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/sound/SoundManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 204
    new-instance v0, Lcom/google/glass/sound/SoundManager$ConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/sound/SoundManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTING:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 205
    new-instance v0, Lcom/google/glass/sound/SoundManager$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/sound/SoundManager$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 201
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/sound/SoundManager$ConnectionState;

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTING:Lcom/google/glass/sound/SoundManager$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->$VALUES:[Lcom/google/glass/sound/SoundManager$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/sound/SoundManager$ConnectionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 201
    const-class v0, Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/sound/SoundManager$ConnectionState;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/google/glass/sound/SoundManager$ConnectionState;->$VALUES:[Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/glass/sound/SoundManager$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/sound/SoundManager$ConnectionState;

    return-object v0
.end method
