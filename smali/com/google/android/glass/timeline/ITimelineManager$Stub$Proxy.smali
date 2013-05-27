.class Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITimelineManager.java"

# interfaces
.implements Lcom/google/android/glass/timeline/ITimelineManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/timeline/ITimelineManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 59
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "com.google.android.glass.timeline.ITimelineManager"

    return-object v0
.end method
