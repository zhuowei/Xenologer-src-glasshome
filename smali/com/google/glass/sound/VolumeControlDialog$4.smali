.class Lcom/google/glass/sound/VolumeControlDialog$4;
.super Ljava/lang/Object;
.source "VolumeControlDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sound/VolumeControlDialog;->onValueChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/VolumeControlDialog;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/google/glass/sound/VolumeControlDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/glass/sound/VolumeControlDialog$4;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    iput p2, p0, Lcom/google/glass/sound/VolumeControlDialog$4;->val$volume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog$4;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    #getter for: Lcom/google/glass/sound/VolumeControlDialog;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;
    invoke-static {v0}, Lcom/google/glass/sound/VolumeControlDialog;->access$200(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/sound/VolumeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sound/VolumeControlDialog$4;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    #getter for: Lcom/google/glass/sound/VolumeControlDialog;->headsetState:I
    invoke-static {v1}, Lcom/google/glass/sound/VolumeControlDialog;->access$400(Lcom/google/glass/sound/VolumeControlDialog;)I

    move-result v1

    iget v2, p0, Lcom/google/glass/sound/VolumeControlDialog$4;->val$volume:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/sound/VolumeHelper;->writeAudioVolume(II)V

    .line 145
    return-void
.end method
