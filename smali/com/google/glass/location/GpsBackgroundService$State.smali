.class final enum Lcom/google/glass/location/GpsBackgroundService$State;
.super Ljava/lang/Enum;
.source "GpsBackgroundService.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/GpsBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/location/GpsBackgroundService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum PEEK4:Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum START:Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum TERMINATED:Lcom/google/glass/location/GpsBackgroundService$State;

.field public static final enum UNSTARTED:Lcom/google/glass/location/GpsBackgroundService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "UNSTARTED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->UNSTARTED:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 48
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 49
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "PEEK1"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 50
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "PEEK2"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 51
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "PEEK4"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK4:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 52
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$State;

    const-string v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/location/GpsBackgroundService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->TERMINATED:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/location/GpsBackgroundService$State;

    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->UNSTARTED:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK4:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->TERMINATED:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->$VALUES:[Lcom/google/glass/location/GpsBackgroundService$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/location/GpsBackgroundService$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/GpsBackgroundService$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/location/GpsBackgroundService$State;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->$VALUES:[Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v0}, [Lcom/google/glass/location/GpsBackgroundService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/location/GpsBackgroundService$State;

    return-object v0
.end method
