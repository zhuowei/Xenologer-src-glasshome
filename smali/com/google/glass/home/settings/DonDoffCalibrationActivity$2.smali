.class Lcom/google/glass/home/settings/DonDoffCalibrationActivity$2;
.super Ljava/lang/Object;
.source "DonDoffCalibrationActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$2;->this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 74
    return-void
.end method
