.class public final Lcom/google/android/glass/timeline/TimelineManager;
.super Ljava/lang/Object;
.source "TimelineManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "timeline"

.field private static final TAG:Ljava/lang/String; = "TimelineManager"

.field private static sInstance:Lcom/google/android/glass/timeline/TimelineManager;


# instance fields
.field private final mService:Lcom/google/android/glass/timeline/ITimelineManager;


# direct methods
.method private constructor <init>(Lcom/google/android/glass/timeline/ITimelineManager;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/glass/timeline/TimelineManager;->mService:Lcom/google/android/glass/timeline/ITimelineManager;

    .line 49
    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/android/glass/timeline/TimelineManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 55
    sget-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    if-nez v1, :cond_15

    .line 56
    const-string v1, "timeline"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    .local v0, binder:Landroid/os/IBinder;
    new-instance v1, Lcom/google/android/glass/timeline/TimelineManager;

    invoke-static {v0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/timeline/ITimelineManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/glass/timeline/TimelineManager;-><init>(Lcom/google/android/glass/timeline/ITimelineManager;)V

    sput-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    .line 59
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_15
    sget-object v1, Lcom/google/android/glass/timeline/TimelineManager;->sInstance:Lcom/google/android/glass/timeline/TimelineManager;

    return-object v1
.end method
