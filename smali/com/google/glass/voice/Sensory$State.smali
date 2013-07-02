.class public final enum Lcom/google/glass/voice/Sensory$State;
.super Ljava/lang/Enum;
.source "Sensory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/Sensory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/Sensory$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/Sensory$State;

.field public static final enum ACTIVE:Lcom/google/glass/voice/Sensory$State;

.field public static final enum DESTROYED:Lcom/google/glass/voice/Sensory$State;

.field public static final enum DESTROYING:Lcom/google/glass/voice/Sensory$State;

.field public static final enum INACTIVE:Lcom/google/glass/voice/Sensory$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    .line 48
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    .line 50
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "DESTROYING"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    .line 52
    new-instance v0, Lcom/google/glass/voice/Sensory$State;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/Sensory$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/Sensory$State;

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->INACTIVE:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->ACTIVE:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYING:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/Sensory$State;->DESTROYED:Lcom/google/glass/voice/Sensory$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/Sensory$State;->$VALUES:[Lcom/google/glass/voice/Sensory$State;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/Sensory$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/google/glass/voice/Sensory$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/Sensory$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/Sensory$State;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/voice/Sensory$State;->$VALUES:[Lcom/google/glass/voice/Sensory$State;

    invoke-virtual {v0}, [Lcom/google/glass/voice/Sensory$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/Sensory$State;

    return-object v0
.end method
