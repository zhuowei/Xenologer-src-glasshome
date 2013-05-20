.class Lcom/google/glass/input/OrientationHelper$1;
.super Landroid/os/AsyncTask;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/input/OrientationHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/hardware/SensorManager;",
        "Ljava/lang/Void;",
        "Landroid/hardware/SensorManager;",
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
    .line 263
    iput-object p1, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 266
    aget-object v0, p1, v3

    .line 275
    .local v0, sensorManager:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v2

    #setter for: Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v1, v2}, Lcom/google/glass/input/OrientationHelper;->access$002(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 276
    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/glass/input/OrientationHelper;->getPreferredSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v2

    #setter for: Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;
    invoke-static {v1, v2}, Lcom/google/glass/input/OrientationHelper;->access$102(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/Sensor;)Landroid/hardware/Sensor;

    .line 277
    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    iget-object v2, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->gravitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/google/glass/input/OrientationHelper;->access$000(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 278
    iget-object v1, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    iget-object v2, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    #getter for: Lcom/google/glass/input/OrientationHelper;->gyroscopeSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/google/glass/input/OrientationHelper;->access$100(Lcom/google/glass/input/OrientationHelper;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 280
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, [Landroid/hardware/SensorManager;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/OrientationHelper$1;->doInBackground([Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/hardware/SensorManager;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/input/OrientationHelper$1;->this$0:Lcom/google/glass/input/OrientationHelper;

    #setter for: Lcom/google/glass/input/OrientationHelper;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0, p1}, Lcom/google/glass/input/OrientationHelper;->access$202(Lcom/google/glass/input/OrientationHelper;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 286
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    check-cast p1, Landroid/hardware/SensorManager;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/input/OrientationHelper$1;->onPostExecute(Landroid/hardware/SensorManager;)V

    return-void
.end method
