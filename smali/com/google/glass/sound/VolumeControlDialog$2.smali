.class Lcom/google/glass/sound/VolumeControlDialog$2;
.super Ljava/lang/Object;
.source "VolumeControlDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/VolumeControlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/VolumeControlDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/VolumeControlDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/sound/VolumeControlDialog$2;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog$2;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    invoke-virtual {v0}, Lcom/google/glass/sound/VolumeControlDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/sound/VolumeControlDialog$2;->this$0:Lcom/google/glass/sound/VolumeControlDialog;

    #calls: Lcom/google/glass/sound/VolumeControlDialog;->getSoundManager()Lcom/google/glass/sound/SoundManager;
    invoke-static {v0}, Lcom/google/glass/sound/VolumeControlDialog;->access$100(Lcom/google/glass/sound/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOLUME_CHANGE:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 61
    :cond_0
    return-void
.end method
