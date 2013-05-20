.class public final enum Lcom/google/glass/home/companion/CompanionService$ConnectionState;
.super Ljava/lang/Enum;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/home/companion/CompanionService$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/home/companion/CompanionService$ConnectionState;

.field public static final enum CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

.field public static final enum CONNECTING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

.field public static final enum LISTENING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

.field public static final enum NONE:Lcom/google/glass/home/companion/CompanionService$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/home/companion/CompanionService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->NONE:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    new-instance v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/home/companion/CompanionService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->LISTENING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    new-instance v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/home/companion/CompanionService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    new-instance v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/home/companion/CompanionService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->NONE:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->LISTENING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTING:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->CONNECTED:Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->$VALUES:[Lcom/google/glass/home/companion/CompanionService$ConnectionState;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 91
    const-class v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/home/companion/CompanionService$ConnectionState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/glass/home/companion/CompanionService$ConnectionState;->$VALUES:[Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/glass/home/companion/CompanionService$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/home/companion/CompanionService$ConnectionState;

    return-object v0
.end method
