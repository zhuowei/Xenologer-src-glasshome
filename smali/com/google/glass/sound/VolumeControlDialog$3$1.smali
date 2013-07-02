.class Lcom/google/glass/sound/VolumeControlDialog$3$1;
.super Ljava/util/HashMap;
.source "VolumeControlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sound/VolumeControlDialog$3;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sound/VolumeControlDialog$3;

.field final synthetic val$numValues:I


# direct methods
.method constructor <init>(Lcom/google/glass/sound/VolumeControlDialog$3;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/glass/sound/VolumeControlDialog$3$1;->this$1:Lcom/google/glass/sound/VolumeControlDialog$3;

    iput p2, p0, Lcom/google/glass/sound/VolumeControlDialog$3$1;->val$numValues:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_volume_muted:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/sound/VolumeControlDialog$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x3f00

    iget v3, p0, Lcom/google/glass/sound/VolumeControlDialog$3$1;->val$numValues:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_volume_medium:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/sound/VolumeControlDialog$3$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
