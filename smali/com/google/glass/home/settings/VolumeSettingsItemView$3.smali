.class Lcom/google/glass/home/settings/VolumeSettingsItemView$3;
.super Ljava/lang/Object;
.source "VolumeSettingsItemView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/VolumeSettingsItemView;->onConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/VolumeSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 122
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    iget-object v1, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$3;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    #calls: Lcom/google/glass/home/settings/VolumeSettingsItemView;->update(I)V
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$100(Lcom/google/glass/home/settings/VolumeSettingsItemView;I)V

    .line 123
    return-void
.end method
