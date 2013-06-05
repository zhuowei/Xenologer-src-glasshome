.class public final Lcom/google/android/glass/timeline/TimelineManager;
.super Ljava/lang/Object;
.source "TimelineManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "timeline"

.field private static sInstance:Lcom/google/android/glass/timeline/TimelineManager;


# instance fields
.field private final mCards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/glass/timeline/LiveCard;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/google/android/glass/timeline/ITimelineManager;


# direct methods
.method private constructor <init>(Lcom/google/android/glass/timeline/ITimelineManager;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/glass/timeline/TimelineManager;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/glass/timeline/TimelineManager;->mCards:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/android/glass/timeline/TimelineManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 61
    sget-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    if-nez v1, :cond_15

    .line 62
    const-string v1, "timeline"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, binder:Landroid/os/IBinder;
    new-instance v1, Lcom/google/android/glass/timeline/TimelineManager;

    invoke-static {v0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/timeline/ITimelineManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/glass/timeline/TimelineManager;-><init>(Lcom/google/android/glass/timeline/ITimelineManager;)V

    sput-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    .line 65
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_15
    sget-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    return-object v1
.end method


# virtual methods
.method public getActiveCard(I)Lcom/google/android/glass/timeline/LiveCard;
    .registers 6
    .parameter "id"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/glass/timeline/TimelineManager;->mCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/google/android/glass/timeline/TimelineManager;->mCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/android/glass/timeline/LiveCard;

    iget-object v3, p0, Lcom/google/android/glass/timeline/TimelineManager;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    invoke-direct {v2, p1, v3}, Lcom/google/android/glass/timeline/LiveCard;-><init>(ILcom/google/android/glass/timeline/ITimelineManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_1c
    iget-object v0, p0, Lcom/google/android/glass/timeline/TimelineManager;->mCards:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/LiveCard;

    return-object v0
.end method
