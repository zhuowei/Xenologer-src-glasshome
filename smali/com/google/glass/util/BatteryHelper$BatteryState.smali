.class public Lcom/google/glass/util/BatteryHelper$BatteryState;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BatteryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryState"
.end annotation


# static fields
.field public static final PERCENT_CHARGED:I = 0x5f

.field public static final PERCENT_LOW:I = 0xa

.field public static final PERCENT_MEDIUM:I = 0x1e

.field public static final PERCENT_UNKNOWN:I = -0x1

.field public static final TIME_TO_EMPTY_UNKNOWN:I = -0x1


# instance fields
.field public isCharged:Z

.field public isCharging:Z

.field public isPowered:Z

.field public percent:F

.field public timeToDischarge:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserEventActionData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "action"

    .prologue
    .line 68
    const-string v0, "a"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "p"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "t"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cg"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "cd"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ip"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/glass/logging/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
