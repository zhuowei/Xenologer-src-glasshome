.class Lcom/google/glass/input/InputDetector$4;
.super Ljava/lang/Object;
.source "InputDetector.java"

# interfaces
.implements Lcom/google/glass/input/OrientationHelper$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/InputDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/InputDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(FFFJ)V
    .locals 3
    .parameter "yaw"
    .parameter "pitch"
    .parameter "roll"
    .parameter "timestamp"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->hasPitch:Z
    invoke-static {v1}, Lcom/google/glass/input/InputDetector;->access$1000(Lcom/google/glass/input/InputDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->lastPitch:F
    invoke-static {v1}, Lcom/google/glass/input/InputDetector;->access$1100(Lcom/google/glass/input/InputDetector;)F

    move-result v1

    sub-float v0, p2, v1

    .line 198
    .local v0, deltaPitch:F
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    const/high16 v2, 0x4234

    mul-float/2addr v2, v0

    #calls: Lcom/google/glass/input/InputDetector;->handleHeadScroll(F)V
    invoke-static {v1, v2}, Lcom/google/glass/input/InputDetector;->access$1200(Lcom/google/glass/input/InputDetector;F)V

    .line 202
    .end local v0           #deltaPitch:F
    :goto_0
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    #setter for: Lcom/google/glass/input/InputDetector;->lastPitch:F
    invoke-static {v1, p2}, Lcom/google/glass/input/InputDetector;->access$1102(Lcom/google/glass/input/InputDetector;F)F

    .line 203
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$4;->this$0:Lcom/google/glass/input/InputDetector;

    const/4 v2, 0x1

    #setter for: Lcom/google/glass/input/InputDetector;->hasPitch:Z
    invoke-static {v1, v2}, Lcom/google/glass/input/InputDetector;->access$1002(Lcom/google/glass/input/InputDetector;Z)Z

    goto :goto_0
.end method
