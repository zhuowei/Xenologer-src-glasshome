.class Lcom/google/glass/home/HomeApplication$7;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->updateVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$7;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/google/glass/sound/VolumeHelper;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$7;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/sound/VolumeHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$7;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/sound/VolumeHelper;->getHeadsetState(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/VolumeHelper;->readAudioVolume(I)I

    .line 324
    return-void
.end method
