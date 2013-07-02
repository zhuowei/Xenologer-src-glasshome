.class Lcom/google/glass/home/settings/VolumeSettingsItemView$2;
.super Landroid/os/AsyncTask;
.source "VolumeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/VolumeSettingsItemView;->update(I)V
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
.field final synthetic this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

.field final synthetic val$headsetState:I


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/VolumeSettingsItemView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    iput p2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->val$headsetState:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->volumeHelper:Lcom/google/glass/sound/VolumeHelper;
    invoke-static {v0}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$200(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/sound/VolumeHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->val$headsetState:I

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
    .line 82
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "volume"

    .prologue
    .line 90
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 93
    iget v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->val$headsetState:I

    invoke-static {v2}, Lcom/google/glass/sound/VolumeHelper;->getNumVolumeValues(I)I

    move-result v0

    .line 94
    .local v0, numValues:I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 96
    .local v1, percent:I
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$300(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$300(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$color;->state_green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    .line 104
    .end local v1           #percent:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    int-to-float v4, v0

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$400(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_volume_full:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_1
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$300(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$string;->volume_muted:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->text:Lcom/google/glass/widget/TypophileTextView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$300(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    invoke-virtual {v3}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$color;->state_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$400(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_volume_medium:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->this$0:Lcom/google/glass/home/settings/VolumeSettingsItemView;

    #getter for: Lcom/google/glass/home/settings/VolumeSettingsItemView;->icon:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/google/glass/home/settings/VolumeSettingsItemView;->access$400(Lcom/google/glass/home/settings/VolumeSettingsItemView;)Landroid/widget/ImageView;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$drawable;->ic_volume_muted:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/settings/VolumeSettingsItemView$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
