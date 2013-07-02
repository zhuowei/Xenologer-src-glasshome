.class Lcom/google/glass/sound/VolumeControlDialog$3;
.super Landroid/os/AsyncTask;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sound/VolumeControlDialog;->initSlider(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/VolumeControlDialog;

.field final synthetic val$headsetState:I


# direct methods
.method constructor <init>(Lcom/google/glass/sound/VolumeControlDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    iput p2, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->val$headsetState:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    #getter for: Lcom/google/glass/sound/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;
    invoke-static {v0}, Lcom/google/glass/sound/VolumeControlDialog;->access$200(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/sound/VolumeHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->val$headsetState:I

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/VolumeHelper;->readAudioVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/sound/VolumeControlDialog$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "volume"

    .prologue
    .line 110
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 111
    iget v2, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->val$headsetState:I

    invoke-static {v2}, Lcom/google/glass/sound/VolumeHelper;->getNumVolumeValues(I)I

    move-result v0

    .line 112
    .local v0, numValues:I
    new-instance v1, Lcom/google/glass/sound/VolumeControlDialog$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/sound/VolumeControlDialog$3$1;-><init>(Lcom/google/glass/sound/VolumeControlDialog$3;I)V

    .line 120
    .local v1, valueToIconResource:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/google/glass/sound/VolumeControlDialog$3;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    #getter for: Lcom/google/glass/sound/VolumeControlDialog;->valueSlider:Lcom/google/glass/widget/ValueSlider;
    invoke-static {v2}, Lcom/google/glass/sound/VolumeControlDialog;->access$300(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/widget/ValueSlider;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_volume_full:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/google/glass/widget/ValueSlider;->init(Ljava/util/Map;III)V

    .line 121
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/sound/VolumeControlDialog$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
