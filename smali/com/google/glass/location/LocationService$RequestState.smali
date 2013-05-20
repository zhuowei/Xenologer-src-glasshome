.class Lcom/google/glass/location/LocationService$RequestState;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestState"
.end annotation


# instance fields
.field lastLocationTime:J

.field request:Lcom/google/glass/location/LocationRequest;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/high16 v0, -0x4000

    iput-wide v0, p0, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/location/LocationService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/location/LocationService$RequestState;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, b:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "[ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " minTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " minDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/location/LocationService$RequestState;->request:Lcom/google/glass/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/glass/location/LocationRequest;->getMinDistance()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    :goto_0
    iget-wide v1, p0, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    const-wide/high16 v3, -0x4000

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 84
    const-string v1, " lastLocationTime:none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    const-string v1, "[OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, " lastLocationTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/location/LocationService$RequestState;->lastLocationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
