.class final Lcom/google/glass/gesture/EyeGestureUtils$2;
.super Landroid/os/AsyncTask;
.source "EyeGestureUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/EyeGestureUtils;->enableGazeServiceGuestModeAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enableState:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    iput-object p2, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/gesture/EyeGestureUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 116
    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing setting of GazeService Guest Mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$enableState:Z

    invoke-static {v0, v1}, Lcom/google/glass/util/HiddenApiHelper;->enableGazeServiceGuestMode(Landroid/content/Context;Z)V

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/gesture/EyeGestureUtils$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "arg"

    .prologue
    .line 123
    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils;->TAG:Ljava/lang/String;

    const-string v2, "Decrementing wake lock."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/google/glass/gesture/EyeGestureUtils$2;->val$context:Landroid/content/Context;

    #calls: Lcom/google/glass/gesture/EyeGestureUtils;->getWakeLockInstance(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/glass/gesture/EyeGestureUtils;->access$000(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 125
    .local v0, wakeLock:Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 128
    :cond_0
    return-void
.end method
