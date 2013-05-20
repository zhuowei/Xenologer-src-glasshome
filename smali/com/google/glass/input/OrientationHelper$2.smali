.class Lcom/google/glass/input/OrientationHelper$2;
.super Lcom/google/glass/util/SerialAsyncTask;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/OrientationHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/SerialAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/OrientationHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/input/OrientationHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    invoke-direct {p0}, Lcom/google/glass/util/SerialAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic serialDoInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/OrientationHelper$2;->serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs serialDoInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/input/OrientationHelper$2;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-object v3

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/google/glass/input/OrientationHelper;->access$200(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    iget-object v2, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/google/glass/input/OrientationHelper;->access$000(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 316
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/google/glass/input/OrientationHelper;->access$200(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    iget-object v2, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/google/glass/input/OrientationHelper;->access$100(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method protected bridge synthetic serialOnPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 297
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/OrientationHelper$2;->serialOnPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected serialOnPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0, v1}, Lcom/google/glass/input/OrientationHelper;->access$202(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 324
    return-void
.end method

.method protected serialOnPreExecute()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper$2;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/google/glass/input/OrientationHelper;->access$200(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {}, Lcom/google/glass/input/OrientationHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null sensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/input/OrientationHelper$2;->cancel(Z)Z

    .line 304
    :cond_0
    return-void
.end method
