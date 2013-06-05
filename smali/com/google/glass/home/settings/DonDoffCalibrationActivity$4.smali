.class Lcom/google/glass/home/settings/DonDoffCalibrationActivity$4;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->showConfirmationMessageThenFinish()V
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
    .line 240
    iput-object p1, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$4;->this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/glass/home/settings/DonDoffCalibrationActivity$4;->this$0:Lcom/google/glass/home/settings/DonDoffCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/DonDoffCalibrationActivity;->finish()V

    .line 245
    return-void
.end method
