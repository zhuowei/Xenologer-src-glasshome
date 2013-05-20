.class Lcom/google/glass/home/settings/DonDoffCalibrationActivity$1;
.super Ljava/lang/Object;
.source "DonDoffCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/DonDoffCalibrationActivity;
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
    .line 52
    iput-object p1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$1;->this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$1;->this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    sget v1, Lcom/google/glass/home/R$string;->don_doff_calibration_failure:I

    #calls: Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->access$000(Lcom/google/glass/home/settings/DonDoffCalibrationActivity;I)V

    .line 56
    return-void
.end method
